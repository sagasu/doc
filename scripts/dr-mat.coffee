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
  "We have asymptotic release cycle",
  "To win greatest victories one must take the greatest risk",
  "Formitable display of coding power",
  "You can not follow the path, before you will become the path yourself",
  "Expect nothing, seek nothing, grasp nothing"
]

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send msg.random(MATT_QUOTE)
    
  robot.respond /awake your brothers/i, (msg)->
    msg.send "https://secure-anchorage-54524.herokuapp.com/"