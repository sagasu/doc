# Description:
#   Prem, Prem, Prem
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot whos the man
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->

  robot.respond /whos the man/i, (msg)->
    msg.send "Prem, Prem, Prem!"
    