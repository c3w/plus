plus
====

command your fleet of systems from your mac using runbooks and environment configs


by defining runbooks and environments in JSON files, you can restart services, push code, examine systems, etc, all with one command line

an example below, restarts the passenger service on all ops-env app servers

./plus ops app passenger restart

you could also specify a particular app server, by changing e.g. 'app' to 'app2'

see the JSON files included to get your feet wet and enjoy!

Chas. <c3w@juicypop.net>
