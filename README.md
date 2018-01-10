# doc
doc is a friendly hubot

#init the cloned code if your bot is hosted in heroku
<br />
After cloning this repo run following two commands
<br />
heroku login
<br />
heroku git:remote -a young-sands-45836
<br />
Now when you run `git remote -vv` you should see git remote being set to heroku.
<br /><br />

#config
<br />
Please use a correct one REDISTOGO_URL, this is just to showw the format.<br />
`heroku config:add REDISTOGO_URL=redis://redistogo:b1bc59b8c7fd80e646b6148d9354813f@lab.redistogo.com:10505`
<br />
`heroku config:add HEROKU_URL=https://young-sands-45836.herokuapp.com`
<br />
`heroku config:add HUBOT_SLACK_TOKEN=xoxb-45372731543-dep7di9WTsj7fUnOjtUXDX6Y`
<br />
`git push heroku master`
