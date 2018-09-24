# Doc

`doc` is a friendly hubot :construction:

# Init the cloned code if your bot is hosted in heroku  
After cloning this repository run following two commands:  
`heroku login`  
`heroku git:remote -a young-sands-45836`  
Now when you run `git remote -vv` you should see git remote being set to heroku.  

# Config
Please use a correct one REDISTOGO_URL, this is just to showw the format.  
`heroku config:add REDISTOGO_URL=redis://redistogo:b1bc59b8c7fd80e646b6148d9354813f@lab.redistogo.com:10505`  
`heroku config:add HEROKU_URL=https://young-sands-45836.herokuapp.com`  
`heroku config:add HUBOT_SLACK_TOKEN=xoxb-45372731543-dep7di9WTsj7fUnOjtUXDX6Y`  
`heroku config:add HUBOT_BOT_NAME=Doc`
`git push heroku master`  
 

# Pushing to heroku w/o making any code modification
`git commit --allow-empty -m "<some text>"`
`git push heroku master`

# Restart bot in heroku if something happened
`heroku restart`

