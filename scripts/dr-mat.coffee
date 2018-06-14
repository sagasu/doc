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
#
# Author:
#   Mateusz Kopij <sagasu>



MATT_QUOTE = [
  "Burritos are just tacoids in the category of enchiladafunctors",
  "Monads are just monoids in the category of endofunctors",
  "The review is pretty 3rd quadrant",
  "Let's do multivariate test",
  "We have asymptotic release cycle",
  "To win greatest victories one must take the greatest risk",
  "Formitable display of coding power"
]

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send msg.random(MATT_QUOTE)
    