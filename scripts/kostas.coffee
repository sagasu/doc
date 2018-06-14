# Description:
#   Kostas requests
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot chori chori
#   hubot whose Kostas favorite actress
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->

  robot.respond /chori chori/i, (msg)->
    msg.send "https://clarksonscloud.slack.com/files/U5418M4P2/FB6S0JVMW/tumblr_mdfs0qceso1rp92ts.gif"
    
  robot.respond /whose Kostas favorite actress/i, (msg)->
    msg.send "https://upload.wikimedia.org/wikipedia/commons/f/f7/Katrina_Kaif_at_an_event_for_Nakshatra.jpg"