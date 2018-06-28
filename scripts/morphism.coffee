# Description:
#   Morphism definitions.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot define homomorphism
#   hubot define isomorphism
#   hubot define monomorphism
#   hubot define endomorphism
#   hubot define automorphism
#   hubot define catamorphism
#   hubot define anamorphism
#   hubot define hylomorphism
#   hubot define paramorphism
#   hubot define polymorphism
#
# Author:
#   Mateusz Kopij <sagasu>


module.exports = (robot) ->

  robot.respond /define homomorphism/i, (msg)->
    msg.send "Means this same as just morphism. A Transformation from A to B."

  robot.respond /define isomorphism/i, (msg)->
    msg.send "A and B are equal by comparing values of properties that define them."

  robot.respond /define monomorphism/i, (msg)->
    msg.send "Injective homomorphism from A to B. It means that that there is no such situation where two different elements from A are transformed to this same element in B."

  robot.respond /define endomorphism/i, (msg)->
    msg.send "Homomorphism of A to itself."

  robot.respond /define automorphism/i, (msg)->
    msg.send "Endomorphism w/o inversion. There is no going back!"

  robot.respond /define catamorphism/i, (msg)->
    msg.send "Bananas :) Dual operation to anaamorphism. Generalizaiton of folds. Functor that takes a colleciton and reduces it to a single value, like Max, Min and Aggregate. Or like Dr Matt handles his beer from full to empty."

  robot.respond /define anamorphism/i, (msg)->
    msg.send "Dual operation to catamorphism. Unfolding to a collection from a single value."

  robot.respond /define hylomorphism/i, (msg)->
    msg.send ""

  robot.respond /define paramorphism/i, (msg)->
    msg.send ""

  robot.respond /define polymorphism/i, (msg)->
    msg.send "One that have multiple morphism."
    