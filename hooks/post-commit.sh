#!/bin/bash
curl http://192.168.56.102:8080/job/LoyaltyOne_Challenge/build?delay=0sec
curl http://192.168.56.102:8080/job/Git_Demo/build?delay=0sec
curl http://192.168.56.102:8080/git/notifyCommit?url=https://github.com/mrafieee/anagrams.git
