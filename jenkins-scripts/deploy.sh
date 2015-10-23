#!/bin/bash
LOGFILE='logs/deployment.log'
BACKUP_FILENAME="/var/www/anagrams_backup/anagrams_$( date '+%Y-%m-%d_%H-%M-%S' ).tar.gz"
RUNNING_DIR=`pwd`
DEPLOYMENT_DIR='/var/www/anagrams/'

echo "-----------------------------------------------------" >> $LOGFILE
echo "$(date) -- automatic deployment from jenkins started." >> $LOGFILE
find ./ -name '*.pyc'
echo "$(date) -- pyc files has benn removed from built project." >> $LOGFILE
find ./ -name '*.pyc' -delete

tar -Pczf $BACKUP_FILENAME /var/www/anagrams
echo "$(date) -- backup file $BACKUP_FILENAME created." >> $LOGFILE
shopt -s extglob

cd $DEPLOYMENT_DIR

rm -r !(db.sqlite3|dictionary.txt)
cd $RUNNING_DIR
ls
echo "$(date) -- $DEPLOYMENT_DIR folder has been cleared." >> $LOGFILE
shopt -u extglob

cp -r apps/ anagrams/ /var/www/anagrams/
echo "$(date) -- $DEPLOYMENT_DIR populated with new files." >> $LOGFILE
