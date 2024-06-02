#!/bin/bash

jobfile=/jobFileLogs.log

echo "This job ran at $(date)" >> $jobfile



# we can run "atq" command to check the jobs that are scheduled. (It gives job id, time of execurion and owner)
# "atrm" to can a job, we have to provide job id. eg --> atrm 3
