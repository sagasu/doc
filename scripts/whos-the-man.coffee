# Description:
#   Who's the man
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot who's the man - Get a random developer excuse
#   hubot whos the man - Get a random developer excuse
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->
  robot.respond /whos the man/i, (msg) ->
    msg.send "Prem, Prem, Prem!"

  robot.respond /whos\'s the man/i, (msg) ->
    msg.send "Prem, Prem, Prem!"