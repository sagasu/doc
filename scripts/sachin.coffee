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
#
# Author:
#   Mateusz Kopij <sagasu>

cuteLinks = [
    "https://github.com/sagasu/offshore-team/blob/master/img/0.jpeg?raw=true",
    "https://github.com/sagasu/offshore-team/blob/master/img/1.jpg?raw=true",
    "https://github.com/sagasu/offshore-team/blob/master/img/2.png?raw=true"
]

justhead = [
  "https://github.com/sagasu/offshore-team/blob/master/img/Sachin.png?raw=true"
]

module.exports = (robot) ->

  robot.respond /sachin bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send cuteLinks[Math.floor(Math.random() * cuteLinks.length)] for element in elements

  robot.respond /sachin super duper bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send "https://github.com/sagasu/offshore-team/blob/master/img/Sachin.png?raw=true" for element in elements
  