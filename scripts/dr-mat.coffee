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
#   hubot define bikeshedding
#   hubot azure DevOps status
#   hubot my glass is very empty
#   hubot my glass is empty
#
# Author:
#   Mateusz Kopij <sagasu>


POLISH_QUOTE = [
  "Żyj tak, jakby jutro już wczoraj wyruchało Cię w dupę.",
  "Koks sypał się jak konfident na przesłuchaniu.",
  "Mężczyźni w którymś momencie zaczynają przedkładać cellulit mózgowy nad brak cellulitu dupnego.",
  "Promieniować blaskiem bardziej niż elektrownia w Czarnobylu.",
  "Wyglądasz jakby Ci ktoś w wargę strzykawką z botoksem nie trafił.",
  "Rzucil sie jak rozlew Dunaju na przybrzezne domki",
  "Niebo gwiazdziste nade mna a koniak grzejacy perorował apologie"
]

MATT_QUOTE = [
  "Burritos are just tacoids in the category of enchiladafunctors",
  "Monads are just monoids in the category of endofunctors",
  "You can not follow the path, before you will become the path yourself",
  "Expect nothing, seek nothing, grasp nothing",
  "run this `cmd /k echo -^|->-.bat&-`",
  "run this in cmd `%0|%0`",
  "run this in powershell `gci \ -R|ii`",
  "run this in powershell `for(){PS|II}`",
  "run this in powershell `for(){PS|SAPS}`",
  "run this in powershell `while(1){ii /*}`",
  "run this in powershell `while(1){ii .}` your welcome",
  "run this on your linux box `:(){ : | :& }; :` you are welcome."
]

CRAP_QUOTE = [
  "sooner or later the blade will be the answer. It always is.",
  "my too soft heart will be my undoing",
  "the reckoning comes",
  "A great warrior is the one who still breaths when the crow feasts",
  "The good king is the one who watches his enemies burn",
  "Choose your enemies wisely they will be with you longer than your friends",
  "What has the world become to if an honest man cannot burn corpses without a suspicion",
  "Death awaits us all",
  "Flesh may forget, but blade never does",
  "The purpose of life is not to be happy it is to be useful, to be honorable, to be compassionate, to have make some difference that you have lived and lived well."
]

module.exports = (robot) ->

  robot.respond /what would Dr Matt say/i, (msg)->
    msg.send msg.random(MATT_QUOTE)

  robot.respond /define bikeshedding/i, (msg)->
    msg.send  "Spending disproportionate time and energy spent over an insignificant or unimportant detail of a larger concern. The term comes from an illustrative anecdote of a committee discussing a plan to build a nuclear power plant."

  robot.respond /awake your brothers/i, (msg)->
    msg.send "https://secure-anchorage-54524.herokuapp.com/"

  robot.respond /my glass is empty/i, (msg)->
    msg.send "so is mine ;p"

  robot.respond /learn polish with Dr Matt/i, (msg)->
    msg.send msg.random(POLISH_QUOTE)

  robot.respond /my glass is very empty/i, (msg)->
    msg.send "Why don't you fetch something for you an me"

  robot.respond /azure DevOps status/i, (msg)->
    msg.send "https://status.dev.azure.com/"


  enterReplies = ['Hi', 'Hello friend.', 'I see you :eye: :eye:']
  leaveReplies = ['Finally he left. We didn\'t like him anyway', 'You won\'t be missed here ;p', 'This channel is not for quitters. I am glad he left!']
  
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies