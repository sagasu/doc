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

ranipics = [
    "https://dumkhum.com/wp-content/uploads/2017/12/Rani-Mukerji_Courtesy-Avinash-Gowariker.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/f/f7/Katrina_Kaif_at_an_event_for_Nakshatra.jpg",
    "https://i.ndtvimg.com/i/2018-04/aishwarya-rai-instagram_650x400_41522744784.jpg?output-quality=70&output-format=webp",
    "https://upload.wikimedia.org/wikipedia/commons/a/a9/Madhuri_Dixit_Dedh_Ishqiya.jpg",
    "http://cdn2.stylecraze.com//wp-content/uploads/2014/05/2364-11-Effective-Makeup-Beauty-Fitness-Secrets-From-Sunny-Leone.jpg"
]

chorichoripics = [
  "https://clarksonscloud.slack.com/files/U5418M4P2/FB7MQDR2R/lungi-dance_012215074659.gif",
  "https://clarksonscloud.slack.com/files/U5418M4P2/FB6S0JVMW/tumblr_mdfs0qceso1rp92ts.gif"
]


module.exports = (robot) ->

  robot.respond /chori chori/i, (msg)->
    msg.send msg.random chorichoripics
    
  robot.respond /whose Kostas favorite actress/i, (msg)->
    msg.send msg.random ranipics

  robot.respond /how is Kostas doing in Mykonos/i, (msg)->
    msg.send "https://github.com/sagasu/offshore-team/raw/master/img/KostasInMykonos.jpg"
