#!/bin/bash


/wait-for-it.sh mongo:27017 --timeout=30
/wait-for-it.sh pg:5432 --timeout=30

if [ ! -f /var/lib/ghiro/installed ]; then
  /install.sh
  touch /var/lib/ghiro/installed
fi

# Run database migrations
python /var/www/ghiro/manage.py migrate

/usr/bin/python /var/www/ghiro/manage.py process &

/usr/sbin/apache2 -D FOREGROUND
#sleep 5
# Start processor.
#cd /var/www/ghiro && python manage.py process
