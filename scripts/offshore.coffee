# Description:
#   offshore team
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot offshore team
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->

  robot.respond /offshore team/i, (msg)->
    msg.send "https://github.com/sagasu/offshore-team/blob/master/img/OffshoreTeam2.jpg?raw=true"
    

