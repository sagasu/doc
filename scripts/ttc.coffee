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
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1544.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1546.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1547.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1548.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1554.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1555.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1556.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1557.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1558.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1560.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1561.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1562.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1563.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1564.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1565.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1566.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1568.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1578.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1580.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1586.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1587.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1590.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1599.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1600.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1601.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1604.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1607.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1610.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1611.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1613.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1614.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1615.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1616.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1617.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1619.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1623.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1624.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1625.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1626.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1628.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1629.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1632.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1633.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1634.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1635.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1636.JPG",
  "https://raw.githubusercontent.com/sagasu/hubot-ttc-team-building/master/img/IMG_1637.JPG"
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
