# Description:
#   Have Hubot remind you to do standups.
#   hh:mm must be in the same timezone as the server Hubot is on. Probably UTC.
#
#   This is configured to work for Hipchat. You may need to change the 'create
#   standup' command to match the adapter you're using.
#
# Configuration:
#  HUBOT_STANDUP_PREPEND
#
# Commands:
#   hubot standup help - See a help document explaining how to use.
#   hubot create standup hh:mm - Creates a standup at hh:mm every weekday for this room
#   hubot create standup hh:mm at location/url - Creates a standup at hh:mm (UTC) every weekday for this chat room with a reminder for a physical location or url
#   hubot create standup Monday@hh:mm - Creates a standup at hh:mm every Monday for this room
#   hubot create standup hh:mm UTC+2 - Creates a standup at hh:mm every weekday for this room (relative to UTC)
#   hubot create standup Monday@hh:mm UTC+2 - Creates a standup at hh:mm every Monday for this room (relative to UTC)
#   hubot list standups - See all standups for this room
#   hubot list all standups - See all standups in every room
#   hubot delete standup hh:mm - If you have a standup on weekdays at hh:mm, delete it. Can also supply a weekday and/or UTC offset
#   hubot delete all standups - Deletes all standups for this room.
#
# Dependencies:
#   underscore
#   cron

###jslint node: true###

cronJob = require('cron').CronJob
_ = require('underscore')

module.exports = (robot) ->
  # Compares current time to the time of the standup to see if it should be fired.
  standupShouldFire = (standup) ->
    standupTime = standup.time
    standupDayOfWeek = getDayOfWeek(standup.dayOfWeek)
    now = new Date()
    standupDate = new Date()
    utcOffset = -standup.utc or (now.getTimezoneOffset() / 60)

    standupHours = parseInt(standupTime.split(":")[0], 10)
    standupMinutes = parseInt(standupTime.split(":")[1], 10)

    standupDate.setUTCMinutes(standupMinutes)
    standupDate.setUTCHours(standupHours + utcOffset)

    result = (standupDate.getUTCHours() == now.getUTCHours()) and
      (standupDate.getUTCMinutes() == now.getUTCMinutes()) and
      (standupDayOfWeek == -1 or (standupDayOfWeek == standupDate.getDay() == now.getUTCDay()))

    if result then true else false

  # Returns the number of a day of the week from a supplied string. Will only attempt to match the first 3 characters
  # Sat/Sun currently aren't supported by the cron but are included to ensure indexes are correct
  getDayOfWeek = (day) ->
    if (!day)
      return -1
    ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'].indexOf(day.toLowerCase().substring(0,3))

  # Returns all standups.
  getStandups = ->
    robot.brain.get('standups') or []

  # Returns just standups for a given room.
  getStandupsForRoom = (room) ->
    _.where getStandups(), room: room

  # Gets all standups, fires ones that should be.
  checkStandups = ->
    standups = getStandups()
    _.chain(standups).filter(standupShouldFire).pluck('room').each doStandup
    return

  # Fires the standup message.
  doStandup = (room) ->
    standups = getStandupsForRoom(room)
    if standups.length > 0
      # Do some magic here to loop through the standups and find the one for right now
      theStandup = standups.filter(standupShouldFire)
      message = "#{PREPEND_MESSAGE} #{_.sample(STANDUP_MESSAGES)} #{theStandup[0].location}"
    else
      message = "#{PREPEND_MESSAGE} #{_.sample(STANDUP_MESSAGES)} #{standups[0].location}"
    robot.messageRoom room, message
    return

  # Finds the room for most adaptors
  findRoom = (msg) ->
    room = msg.envelope.room
    if _.isUndefined(room)
      room = msg.envelope.user.reply_to
    room

  # Confirm a time is in the valid 00:00 format
  timeIsValid = (time) ->
    validateTimePattern = /([01]?[0-9]|2[0-4]):[0-5]?[0-9]/
    return validateTimePattern.test time

  # Stores a standup in the brain.
  saveStandup = (room, dayOfWeek, time, utcOffset, location, msg) ->
    if !timeIsValid time
      msg.send "Sorry, but I couldn't find a time to create the standup at."
      return

    standups = getStandups()
    newStandup =
      room: room
      dayOfWeek: dayOfWeek
      time: time
      utc: utcOffset
      location: location.trim()
    standups.push newStandup
    updateBrain standups
    displayDate = dayOfWeek or 'weekday'
    msg.send 'Ok, from now on I\'ll remind this room to do a standup every ' + displayDate + ' at ' + time + (if location then location else '')
    return

  # Updates the brain's standup knowledge.
  updateBrain = (standups) ->
    robot.brain.set 'standups', standups
    return

  # Remove all standups for a room
  clearAllStandupsForRoom = (room, msg) ->
    standups = getStandups()
    standupsToKeep = _.reject(standups, room: room)
    updateBrain standupsToKeep
    standupsCleared = standups.length - (standupsToKeep.length)
    msg.send 'Deleted ' + standupsCleared + ' standups for ' + room
    return

  # Remove specific standups for a room
  clearSpecificStandupForRoom = (room, time, msg) ->
    if !timeIsValid time
      msg.send "Sorry, but I couldn't spot a time in your command."
      return

    standups = getStandups()
    standupsToKeep = _.reject(standups,
      room: room
      time: time)
    updateBrain standupsToKeep
    standupsCleared = standups.length - (standupsToKeep.length)
    if standupsCleared == 0
      msg.send 'Nice try. You don\'t even have a standup at ' + time
    else
      msg.send 'Deleted your ' + time + ' standup.'
    return

  # Responsd to the help command
  sendHelp = (msg) ->
    message = []
    message.push 'I can remind you to do your standups!'
    message.push 'Use me to create a standup, and then I\'ll post in this room at the times you specify. Here\'s how:'
    message.push ''
    message.push robot.name + ' create standup hh:mm - I\'ll remind you to standup in this room at hh:mm every weekday.'
    message.push robot.name + ' create standup hh:mm UTC+2 - I\'ll remind you to standup in this room at hh:mm UTC+2 every weekday.'
    message.push robot.name + ' create standup hh:mm at location/url - Creates a standup at hh:mm (UTC) every weekday for this chat room with a reminder for a physical location or url'
    message.push robot.name + ' create standup Monday@hh:mm UTC+2 - I\'ll remind you to standup in this room at hh:mm UTC+2 every Monday.'
    message.push robot.name + ' list standups - See all standups for this room.'
    message.push robot.name + ' list all standups- Be nosey and see when other rooms have their standup.'
    message.push robot.name + ' delete standup hh:mm - If you have a standup at hh:mm, I\'ll delete it.'
    message.push robot.name + ' delete all standups - Deletes all standups for this room.'
    msg.send message.join('\n')
    return

  # List the standups within a specific room
  listStandupsForRoom = (room, msg) ->
    standups = getStandupsForRoom(findRoom(msg))
    if standups.length == 0
      msg.send 'Well this is awkward. You haven\'t got any standups set :-/'
    else
      standupsText = [ 'Here\'s your standups:' ].concat(_.map(standups, (standup) ->
        text =  'Time: ' + standup.time
        if standup.utc
          text += ' UTC' + standup.utc
        if standup.location
          text +=', Location: '+ standup.location
        text
      ))
      msg.send standupsText.join('\n')
    return

  listStandupsForAllRooms = (msg) ->
    standups = getStandups()
    if standups.length == 0
      msg.send 'No, because there aren\'t any.'
    else
      standupsText = [ 'Here\'s the standups for every room:' ].concat(_.map(standups, (standup) ->
        text =  'Room: ' + standup.room + ', Time: ' + standup.time
        if standup.utc
          text += ' UTC' + standup.utc
        if standup.location
          text +=', Location: '+ standup.location
        text
      ))
      msg.send standupsText.join('\n')
    return

  'use strict'
  # Constants.
  STANDUP_MESSAGES = [
    'Standup time!'
    'Time for standup, y\'all.'
    'It\'s standup time once again!'
    'Get up, stand up (it\'s time for our standup)'
    'Standup time. Get up, humans'
    'Standup time! Now! Go go go!'
    'Time to learn what Sachin did yesterday. Standup!'
    'Is CBRIS going to rule the world? Let\'s learn during standup.'
    ':richard: approves, it is time for standup.'
    'To standup or to sitdown that is the question'
    'Kostas is rapping this stadup so gather to hear'
    'Let\'s hear how many bugs :ahsan: found, just now on stadup'
  ]
  PREPEND_MESSAGE = process.env.HUBOT_STANDUP_PREPEND or ''
  if PREPEND_MESSAGE.length > 0 and PREPEND_MESSAGE.slice(-1) != ' '
    PREPEND_MESSAGE += ' '

  # Check for standups that need to be fired, once a minute
  # Monday to Friday.
  new cronJob('1 * * * * 1-5', checkStandups, null, true)

  # Global regex should match all possible options
  robot.respond /(.*?)standups? ?(?:([A-z]*)\s?\@\s?)?((?:[01]?[0-9]|2[0-4]):[0-5]?[0-9])?(?: UTC([- +]\d\d?))?(.*)/i, (msg) ->
    action = msg.match[1].trim().toLowerCase()
    dayOfWeek = msg.match[2]
    time = msg.match[3]
    utcOffset = msg.match[4]
    location = msg.match[5]
    room = findRoom msg

    switch action
      when 'create' then saveStandup room, dayOfWeek, time, utcOffset, location, msg
      when 'list' then listStandupsForRoom room, msg
      when 'list all' then listStandupsForAllRooms msg
      when 'delete' then clearSpecificStandupForRoom room, time, msg
      when 'delete all' then clearAllStandupsForRoom room, msg
      else sendHelp msg
    return

return
