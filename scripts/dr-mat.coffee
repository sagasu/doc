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
  "Lead me from unreal to real",
  "All is vanity, all is now, all is dust",
  "I admire the eyes of persuasion",
  "Speed equals winning",
  "The man who moves the mountains begins with moving the small stones",
  "The art of competing is the art of forgetting. Forgetting your limits, forgetting your pain."
]

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send msg.random(MATT_QUOTE)
    
  robot.respond /awake your brothers/i, (msg)->
    msg.send "https://secure-anchorage-54524.herokuapp.com/"