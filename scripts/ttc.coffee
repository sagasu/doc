# Description:
#    last day of kaizen team - display motivational image
#
# Commands:
#    hubot raise the team spirit
#    hubot why is LMD delayed?
#    hubot BTFL
#
# Author:
#   sagasu

ttc = [
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1544.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1546.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1547.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1548.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1554.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1555.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1556.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1557.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1558.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1560.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1561.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1562.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1563.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1564.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1565.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1566.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1568.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1578.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1580.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1586.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1587.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1590.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1599.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1600.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1601.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1604.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1607.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1610.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1611.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1613.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1614.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1615.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1616.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1617.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1619.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1623.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1624.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1625.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1626.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1628.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1629.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1632.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1633.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1634.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1635.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1636.jpg?raw=true",
  "https://github.com/sagasu/hubot-ttc-team-building/blob/master/img/IMG_1637.jpg?raw=true"
]

module.exports = (robot) ->
  robot.respond /raise the team spirit/i, (msg) ->
    msg.send msg.random ttc

  robot.respond /why is LMD delayed/i, (msg) ->
    msg.send msg.random ttc

  robot.respond /BTFL/i, (msg) ->
    msg.send msg.random ttc
