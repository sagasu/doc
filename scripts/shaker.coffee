# Description
#   Insults you in a Shakespearean fashion
#
# 
#   Made possible by http://www.pangloss.com/seidel/Shaker/
#
#
# Commands:
#   hubot (do|don't|are you) (insult2|insulting) me
#
# 
# Author:
#   buckmeisterq@gmail.com

insultUrl = 'http://www.pangloss.com/seidel/Shaker/'

module.exports = (robot) ->

  robotInsultRegex = new RegExp("(#{robot.name}|.*)? ?(insult2|insulting) ?(#{robot.name}|.*)?", "i")

  insultFunction = (res) ->
    robot.http(insultUrl)
        .get() (err, resp, body) ->
          robot.logger.debug "The body cometh, like the East, and Juliet is the sun"
          robot.logger.debug "results? #{body}"
          insultRegex = /(.*)<\/font>/
          insultLine = body.match(insultRegex)
          fullInsult = insultLine[0].replace(/<\/font>/, '')
          robot.logger.debug "The envelope user.mention_name: #{res.envelope.user.mention_name}"
          res.send "#{fullInsult}"

  robot.hear robotInsultRegex, (res) ->
    preName = res.match[1]
    postName = res.match[3]
    robotNameRegex = new RegExp(robot.name, "i")
    if preName? and preName.match robotNameRegex
      insultFunction(res)
    if postName? and postName.match robotNameRegex
      insultFunction(res)

