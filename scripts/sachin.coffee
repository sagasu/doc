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
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/sachinWithRelatives.jpg",
    "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/yogin.jpg"
]

punjabi = [
  "Bagul butcha = crazy boy",
  "bewakoof = stupid",
  "Bhen Da Yaar = sister boyfriend",
  "Bhen da shola = sister pussy"
  "Bhenchode = sister fucker",
  "Bibi di fudi = Grandmothers pussy",
  "Bund = ass",
  "Bund Mara = get ass fucked"
  "Chitta Bander = white monkey",
  "Chitterchort = bum shagger",
  "Chutiyaa = asshole",
  "Dhila lan de padiash = born by lose dick",
  "Fudi da tataa = taste vagina",
  "Gashti = whore",
  "Haramjada = bastard",
  "Jaa apne braah nu chod laa = go fuck your brother",
  "Kanjar = male whore",
  "Kanjari = Female whore",
  "Kenjer = Fucker",
  "Khota = donkey",
  "Kuta = dog",
  "Kutha = Male dog",
  "Kuthi = Female dog",
  "Laan tare mow nee = Your mums dick",
  "Lund = sick",
  "Lund Chuss = suck Dick",
  "Maan Da Yaar = mother's boyfriend",
  "Maan Chod = mother Fucker",
  "Mamai = boobs",
  "Mamai Chuss= suck boobs",
  "Meh tera tueh vich aangliyan devan = I'm gonna finger ur ass",
  "Menu zor nal lan mar = fuck me hard",
  "Mera lan sakht ah = my dick is hard",
  "Mera lan tera tueh ki paarsi = my dick is gonna rip ur ass",
  "Mera lun choos ta aangly mar = suck my dick and finger me",
  "Meri Tutti Kha = eat my shit",
  "Mume = breast"
]

module.exports = (robot) ->

  robot.respond /sachin bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send cuteLinks[Math.floor(Math.random() * cuteLinks.length)] for element in elements

  robot.respond /what is Sachin doing/i, (msg)->
    msg.send "https://raw.githubusercontent.com/sagasu/offshore-team/master/img/yogin.jpg"
    msg.send "stretching so he can be more flexible with CBRIS code."

  robot.respond /learn punjabi with Sdog/i, (msg)->
    msg.send msg.random punjabi

  robot.respond /introduce Sachin/i, (msg)->
    msg.send "Bloodies son of mother war. Breaker of swords. Maker of orphans. Sachin the Magnificent. "

  robot.respond /sachin super duper bomb( (\d+))?/i, (msg)->
    count = msg.match[2] || 5
    elements = [1..count]
    Math.floor(Math.random() * cuteLinks.length)
    msg.send ":sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin: :sachin:" for element in elements
  