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
#   hubot define SRP
#   hubot define OCP
#   hubot define LSP
#   hubot define ISP
#   hubot define DIP
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

  robot.respond /define SRP/i, (msg)->
    msg.send "Single responsibility principle. A class should have only a single responsibility (i.e. changes to only one part of the software's specification should be able to affect the specification of the class)."

  robot.respond /define OCP/i, (msg)->
    msg.send "Open/closed principle. Software entities … should be open for extension, but closed for modification."

  robot.respond /define LSP/i, (msg)->
    msg.send "Liskov substitution principle. Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. See also design by contract."

  robot.respond /define ISP/i, (msg)->
    msg.send "Interface segregation principle. Many client-specific interfaces are better than one general-purpose interface."

  robot.respond /define DIP/i, (msg)->
    msg.send "Dependency inversion principle. One should depend upon abstractions, [not] concretions."
