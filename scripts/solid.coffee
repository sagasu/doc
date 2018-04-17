# Description:
#   SOLID at its glory
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot define solid
#
# Author:
#   Mateusz Kopij <sagasu>

module.exports = (robot) ->

  robot.respond /define solid/i, (msg)->
    msg.send "In object-oriented computer programming, the term SOLID is a mnemonic acronym for five design principles intended to make software designs more understandable, flexible and maintainable. The principles are a subset of many principles promoted by Robert C. Martin. Though they apply to any object-oriented design, the SOLID principles can also form a core philosophy for methodologies such as agile development or adaptive software development. The SOLID acronym was introduced by Michael Feathers.\n
They are:\n
1) Single responsibility principle \n
2) Open/closed principle \n
3) Liskov substitution principle \n
4) Interface segregation principle \n
5) Dependency inversion principle"