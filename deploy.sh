#!/bin/bash
LOGFILE='logs/deployment.log'
echo "$(date) -- automatic deployment from jenkins started." >> $LOGFILE
find ./ -name '*.pyc'
echo "$(date) -- pyc files has benn removed from built project." >> $LOGFILE
find ./ -name '*.pyc' -delete

FILENAME='/var/www/anagrams_$( date '+%Y-%m-%d_%H-%M-%S' ).tar.gz'

tar -czf $FILENAME /var/www/anagrams 1>&2 >> $LOGFILE
echo '$(date) -- backup file $(FILENAME) created.' >> $LOGFILE
shopt -s extglob

cd /var/www/anagrams

rm -r !(db.sqlite3|dictionary.txt) 1>&2 >> $LOGFILE
echo '$(date) -- /var/www/anagrams/ folder has been cleared.' >> $LOGFILE
cd /root/anagrams_last

cp -r !(db.sqlite3|dictionary.txt) /var/www/anagrams/
shopt -u extglob
