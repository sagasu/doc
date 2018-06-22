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


offshorepics = [
  "https://github.com/sagasu/offshore-team/blob/master/img/OffshoreTeam2.jpg?raw=true",
  "https://github.com/sagasu/offshore-team/blob/master/img/vicTeam.png?raw=true"
]

module.exports = (robot) ->

  robot.respond /offshore team/i, (msg)->
    msg.send msg.random offshorepics
    

