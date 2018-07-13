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
#   hubot sachin nsfw
#   hubot who will be victorious
#   hubot who will prevail
#
# Author:
#   Mateusz Kopij <sagasu>


offshorepics = [
  "https://github.com/sagasu/offshore-team/raw/master/img/OffshoreTeam2.jpg",
  "https://github.com/sagasu/offshore-team/raw/master/img/vicTeam.png",
  "https://github.com/sagasu/offshore-team/raw/master/img/offshore_gone_wrong.png"
]

module.exports = (robot) ->

  robot.respond /offshore team/i, (msg)->
    msg.send msg.random offshorepics

  robot.respond /sachin nsfw/i, (msg)->
    msg.send "https://github.com/sagasu/offshore-team/raw/master/img/offshore_gone_wrong.png"
    

  robot.respond /who will be victorious/i, (msg)->
    msg.send "The Offshore team! :sachin: :prem: :kostas: :chris: :drmatt:"

  robot.respond /who will prevail/i, (msg)->
    msg.send "The Offshore team! :sachin: :prem: :kostas: :chris: :drmatt:"
