#!/bin/bash

jobfile=/jobFileLogs.log

/usr/bin/echo "This job ran at $(/usr/bin/date)" >> $jobfile



# we can run "atq" command to check the jobs that are scheduled. (It gives job id, time of execurion and owner)
# "atrm" to can a job, we have to provide job id. eg --> atrm 3
# at 18:00 071224 -f <file path> ----- "071224 (MMDDYY) date at which the job is scheduled"
