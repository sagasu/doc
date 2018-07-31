# Description:
#   Sachin bomb
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot sachin bomb 1
#   hubot sachin bomb 2
#   hubot sachin bomb N
#   hubot sachin super duper bomb 1
#   hubot sachin super duper bomb 2
#   hubot sachin super duper bomb N
#   hubot what is Sachin doing
#
# Author:
#   Mateusz Kopij <sagasu>

cuteLinks = [
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/0.jpeg",
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/1.jpg",
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/2.png",
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/sachinWithRelatives.jpg"
]

justhead = [
  ":sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin:"
]

module.exports = (robot) ->

  robot.respond /sachin bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send cuteLinks[Math.floor(Math.random() * cuteLinks.length)] for element in elements

  robot.respond /what is Sachin doing/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/sachinWithRelatives.jpg"
    msg.send "Meeting his wife relatives in India."

  robot.respond /sachin super duper bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send ":sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin:" for element in elements
  