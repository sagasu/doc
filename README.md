
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  

# Doc

`doc` is a friendly hubot :construction:

# Init the cloned code if your bot is hosted in heroku  
After cloning this repository run following two commands:  
`heroku login`  
`heroku git:remote -a doc-the-bot`  
Now when you run `git remote -vv` you should see git remote being set to heroku.  

# Config
Please use a correct one REDISTOGO_URL, this is just to showw the format.  
`heroku config:add REDISTOGO_URL=redis://redistogo:b1bc59b8c7fd80e646b6148d9354813f@lab.redistogo.com:10505`  
`heroku config:add HEROKU_URL=https://doc-the-bot.herokuapp.com`  
`heroku config:add HUBOT_SLACK_TOKEN=xoxb-45372731543-dep7di9WTsj7fUnOjtUXDX6Y`  
`heroku config:add HUBOT_BOT_NAME=doc`  
`git push heroku master`  
 

# Pushing to heroku w/o making any code modification
`git commit --allow-empty -m "<some text>"`  
`git push heroku master`  

# Redeploy and don't use cached modules
`heroku config:set NODE_MODULES_CACHE=false`  
`git commit -am 'rebuild' --allow-empty`  
`git push heroku master`  
`heroku config:unset NODE_MODULES_CACHE`  

# Restart bot in heroku if something happened
`heroku restart`
  
# Show logs
`heroku logs`  
  
# old external scripts
[
  "hubot-reaction",
  "hubot-plusplus",
  "hubot-haiku",
  "hubot-help",
  "hubot-heroku-keepalive",
  "hubot-diagnostics",
  "hubot-pugme",
  "hubot-redis-brain",
  "hubot-maps",
  "hubot-rules",
  "hubot-shipit2",
  "hubot-thank-you",
  "hubot-tell",
  "hubot-principles",
  "hubot-darts",
  "hubot-thesimpsons",
  "hubot-victory",
  "hubot-trello",
  "hubot-hrexcuse",
  "hubot-euro2016",
  "hubot-cutebomb",
  "hubot-brexit",
  "hubot-blackfriday",
  "hubot-beer-o-clock",
  "hubot-weather-mexico",
  "hubot-appearin",
  "hubot-houseparty",
  "hubot-insulter",
  "hubot-slack-utils"
]

# old hubot-scripts
["whos-the-man", "email", "cat", "sachin", "kostas", "standup", "morphism", "dr-matt", "offshore", "shaker", "solid", "do-it", "ambush", "applause", "hubotagainsthumanity", "birthday", "chuck-norris.coffee"]
