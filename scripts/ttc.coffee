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
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1544.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1546.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1547.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1548.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1554.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1555.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1556.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1557.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1558.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1560.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1561.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1562.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1563.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1564.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1565.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1566.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1568.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1578.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1580.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1586.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1587.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1590.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1599.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1600.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1601.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1604.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1607.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1610.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1611.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1613.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1614.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1615.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1616.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1617.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1619.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1623.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1624.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1625.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1626.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1628.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1629.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1632.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1633.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1634.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1635.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1636.jpg",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1637.jpg"
]

module.exports = (robot) ->
  robot.respond /raise the team spirit/i, (msg) ->
    msg.send msg.random ttc
    msg.send msg.random ttc
    msg.send msg.random ttc

  robot.respond /why is LMD delayed/i, (msg) ->
    msg.send msg.random ttc
    msg.send msg.random ttc
    msg.send msg.random ttc

  robot.respond /BTFL/i, (msg) ->
    msg.send msg.random ttc
    msg.send msg.random ttc
    msg.send msg.random ttc
