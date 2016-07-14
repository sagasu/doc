# Description:
#   What would Linus Say?
#   Get a random inspirational quote from Linus Torvalds.
#
# Commands:
#   hubot what would linus say?
#
# Author:
#   ticean

quotes = [
    "Some people have told me they don't think a fat penguin really embodies the grace of Linux, which just tells me they have never seen an angry penguin charging at them in excess of 100mph.",
    "C++ is a horrible language.",
    "Slashdot people are usually smelly and eat their boogers.",
    "It's clear that I'm not only the smartest person around, I'm also incredibly good-looking, and that my infallible charm is also second only to my becoming modesty.",
    "Whichever moron though that its 'good security' to require the root password for everyday things like this is mentally diseased.",
    "Your problem has everything to do with emacs.",
    "Emacs is the most gummed-up piece of absolute shit there is!",
    "OS X file system is complete and utter crap.",
    "You're a complete idiot, and I'm not going to apply this patch because it's obviously broken and is a total piece of shit.",
    "Why did you do that horrible thing?",
    "When it works for you Angels sing and light suddenly fills the room.",
    "Goddamn idiot truckload of shit.",
    "I think the OpenBSD crowd is a bunch of masturbating monkeys.",
    "You can rest easy knowing tht it's all your own damn fault, and you should just fix your evil ways.",
    "Gnome seems to be developed by the interface Nazis.",
    "They are literally several levels of being wrong. If we were to live in an alternate universe where they would be right... they'd still be wrong.",
    "I'm in active competition with them, so I hope they die.",
    "Those particular color choices will make most people decide to pick out their eyes with a fondue fork.",
    "Digging in your eye-sockets with a fondue fork is strictly considered bad for your health, and seve out of nine optometrists are dead set agains the practice.",
    "In order to avoid a lot of blind users, please apply this patch.",
    "Only wimps use tape backup: real men just upload their important stuff on ftp, and let the rest of the world mirror it.",
    "Regression testing? What's that? If it compiles, it is good; if it boots up, it is perfect.",
    "Once you realize that documentation should be laughed at, peed upon, put on fire, and just ridiculed in general, THEN, and only then, have you reached the level where you can safely read it and try to use it to actually implement a driver.",
    "I'm always right. This time I'm just even more right than usual.",
    "A lot of people still like Solaris, but I'm in active competition with them, and so I hope they die.",
    "Standards are paper. I use paper to wipe my butt every day. That's how much that paper is worth.",
    "Crying that it's an application bug is like crying over the speed of light: you should deal with reality, not what you wish reality was.",
    "Nvidia, fuck you!",
    "I am a lazy person, which is why I like open source, for other people to do work for me."]

module.exports = (robot) ->
  robot.hear /what would linus say/i, (msg) ->
    msg.send msg.random quotes
