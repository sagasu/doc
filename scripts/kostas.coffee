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
#   hubot how is Kostas doing in Mykonos
#
# Author:
#   Mateusz Kopij <sagasu>

ranipics = [
    "https://dumkhum.com/wp-content/uploads/2017/12/Rani-Mukerji_Courtesy-Avinash-Gowariker.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/f/f7/Katrina_Kaif_at_an_event_for_Nakshatra.jpg",
    "https://i.ndtvimg.com/i/2018-04/aishwarya-rai-instagram_650x400_41522744784.jpg?output-quality=70&output-format=webp",
    "https://upload.wikimedia.org/wikipedia/commons/a/a9/Madhuri_Dixit_Dedh_Ishqiya.jpg",
    "http://cdn2.stylecraze.com//wp-content/uploads/2014/05/2364-11-Effective-Makeup-Beauty-Fitness-Secrets-From-Sunny-Leone.jpg",
    "https://img.buzzfeed.com/buzzfeed-static/static/2014-10/20/15/enhanced/webdr08/anigif_enhanced-6007-1413833381-9.gif?downsize=715:*&output-format=auto&output-quality=auto"
]

chorichoripics = [
  "https://smedia2.intoday.in/dailyo//story/embed/201501/lungi-dance_012215074659.gif",
  "https://vignette.wikia.nocookie.net/glee/images/a/ae/Tumblr_mdfs0qcESo1rp92ts.gif/revision/latest?cb=20130113214444",
  "https://1.bp.blogspot.com/-JJf-vcwvZtw/V5brJ36t0kI/AAAAAAAAAHM/ik_D98CLhgIqKGmlid0Y-dWx2Kah6ZUUwCLcB/s1600/23.gif"
]

kostasInMykonos = [
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/KostasInMykonos.jpg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/KostasMykonos.gif",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/KostasNextMorningKneel.jpg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/KostasDrunk.jpeg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/unicorn.jpeg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/heIsBack.jpeg"
]

module.exports = (robot) ->

  robot.respond /chori chori/i, (msg)->
    msg.send msg.random chorichoripics
    
  robot.respond /whose Kostas favorite actress/i, (msg)->
    msg.send msg.random ranipics

  robot.respond /how is Kostas doing in Mykonos/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/heIsBack.jpeg"
