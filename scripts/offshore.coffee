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
  "https://github.com/sagasu/offshore-team/raw/master/img/OffshoreTeam2.jpg",
  "https://github.com/sagasu/offshore-team/raw/master/img/vicTeam.png"
]

module.exports = (robot) ->

  robot.respond /offshore team/i, (msg)->
    msg.send msg.random offshorepics
    

