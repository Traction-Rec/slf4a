#!/bin/bash

NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
LEVEL_NAME="t_$NEW_UUID"
echo "creating log level $LEVEL_NAME"
sfdx force:data:record:create -s DebugLevel -t -v "DeveloperName=$LEVEL_NAME MasterLabel=From_CLI ApexCode=FINEST ApexProfiling=DEBUG Callout=DEBUG Database=Debug System=NONE Validation=DEBUG Visualforce=DEBUG Workflow=DEBUG" || true
echo "you'll have to kill me yourself"
sfdx force:apex:log:tail --color --debuglevel $LEVEL_NAME