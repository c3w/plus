plus
====

command your fleet of systems from your mac using runbooks and environment configs

DEMO VIDEO @ https://www.youtube.com/watch?v=SmELzh3zMIs&feature=youtube_gdata_player

##############
UPDATE!!!! now supports TAB completion - just put _plus_complete.sh and plus_helper in your ~/bin directory, then add . ~/bin/plus_complete.sh to your ~/.bash_profile
##############

by defining runbooks and environments in JSON files, you can restart services, push code, examine systems, etc, all with one command line

an example below, restarts the passenger service on all ops-env app servers

./plus ops app passenger restart

you could also specify a particular app server, by changing e.g. 'app' to 'app2'

see the JSON files included to get your feet wet and enjoy!


### p.s. found a good online JSON-lint validator that I recommend using before commiting any changes to the JSON files ### -- http://jsonlint.com/

Chas. <c3w@juicypop.net>
