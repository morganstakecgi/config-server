#!/usr/bin/env bash

cf cups paper-trail-logs -l syslog-tls://logs6.papertrailapp.com:46919
cf cups my-newrelic -p -p '{"licenseKey":"94b8b6de35b78ebb41ccbca996213f3170bf1853"}'
cf cups config-repo-git -p '{"uri":""}'
cf cups config-basic-auth -p '{"username":"morgan","password":"morgan"}'
cf cups config-server -r uri
