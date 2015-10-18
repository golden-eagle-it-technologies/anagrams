#!/usr/bin/python
# this piece of code should be places in a new file in .git/hooks/ directory

import sys
from subprocess import call

if __name__ == '__main__':
    for line in sys.stdin.xreadlines():
        old, new, ref = line.strip().split(' ')
        if ref == 'refs/heads/master':
            print "=============================================="
            print "Pushing to master. Triggering jenkins.        "
            print "=============================================="
            sys.stdout.flush()
            call(["curl", "-sS", "http://192.168.56.102:8080/git/notifyCommit?url=https://github.com/mrafieee/anagrams.git"])
