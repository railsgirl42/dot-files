alias a2errlog='tail -f /var/log/apache2/error.log'
alias a2acclog='tail -f /var/log/apache2/access.log'
alias a2restart='sudo /etc/init.d/apache2 restart'
alias ll='ls -l'
alias la='ls -al'
alias lh='ls -lh'
alias dud='du -h --max-depth=1'
alias sdud='sudo du -h --max-depth=1'

alias autocuke='AUTOFEATURE=true autospec'

alias reapp='touch tmp/restart.txt'
alias devlog='tail -f log/development.log'
alias joblog='tail -f log/delayed_job.log'
alias testlog='tail -f log/test.log'
alias cuclog='tail -f log/cucumber.log'

