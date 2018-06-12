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
#   hubot what would Dr Matt say
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send "Burritos are just tacoids in the category of enchiladafunctors"
    