# Description:
#   offshore team
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot offshore team
#   hubot sachin nsfw
#   hubot who will be victorious
#   hubot who will prevail
#   hubot who will unleash righteous vengeance upon evil
#   hubot who will be triumphant
#   hubot what is Chris doing today
#   hubot Chris excuse
#   hubot goodbye Prem
#
# Author:
#   Mateusz Kopij <sagasu>

chrisExcuse = [
  "Sachin makes me feel uncomfortable",
  "It's your smell",
  "The world is becoming a computer, so am I",
  "I focus on privacy today, you don't have an access.",
  "I am protecting the democracies today. Priorities matter.",
  "I will be working with ethical AI team. Make sure that it parties like it should, otherwise it wouldn't be ethical.",
  "I am empowering the team to be more self organized, and take decisions on their own.",
  "That it the price of innovation and be `zuper` creative.",
  "Microsoft is pushing Azure project I am pushing my project today.",
  "I will be creating tickets in JIRA -> sorry TFS for DGI drones and Azuresphere",
  "I will be checking the quality of products on my favorite hub site. The world needs my input.",
  "Yesterday Sachin showed me his drone, I am still meditating on that."
]

offshorepics = [
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/OffshoreTeam2.jpg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/vicTeam.png",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/offshore_gone_wrong.png",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/chris-donkey-cart-race.jpg"
]

goodbyePrem = [
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/goodbyeold.jpg",
  "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/premZeus.jpg"
]

module.exports = (robot) ->

  robot.respond /offshore team/i, (msg)->
    msg.send msg.random offshorepics

  robot.respond /Chris excuse/i, (msg)->
    msg.send msg.random chrisExcuse

  robot.respond /sachin nsfw/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/offshore_gone_wrong.png"
    
  robot.respond /what is Chris doing today/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/chris-donkey-cart-race.jpg"
    msg.send "racing on his ride."

  robot.respond /goodbye Prem/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/premZeus.jpg"
    msg.send "Praise to the Lord! Hail to you o mighty Prem."

  robot.respond /who will be victorious/i, (msg)->
    msg.send "The Offshore team! :ahsan: :sachin: :prem: :kostas: :chris: :drmatt:"

  robot.respond /who will be triumphant/i, (msg)->
    msg.send "The Offshore team! :ahsan: :sachin: :prem: :kostas: :chris: :drmatt:"

  robot.respond /who will prevail/i, (msg)->
    msg.send "The Offshore team! :ahsan: :sachin: :prem: :kostas: :chris: :drmatt:"

  robot.respond /who will unleash righteous vengeance upon evil/i, (msg)->
    msg.send "The heroes of offshore team! :ahsan: :sachin: :prem: :kostas: :chris: :drmatt:"

  robot.respond /when all hope is lost and darkness is upon us/i, (msg)->
    msg.send "The offshore team shall know no fear! :ahsan: :sachin: :prem: :kostas: :chris: :drmatt:"
