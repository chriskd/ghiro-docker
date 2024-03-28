To install Ghiro using Docker, from the root of this project run

```
docker-compose build ghiro && docker-compose up -d 
```
Ghiro will then be available in your browser at [http://localhost:9991/](http://localhost:9991/)

Default username: **ghiro**

Default password: **ghiromanager**

To upload images, place the images you want to import into the `images/` folder. In the interface, add folder `uploads/{your folder}`. 

If the images are not being processed after upload, run `docker exec -it {container_name} /usr/bin/python /var/www/ghiro/manage.py process`
