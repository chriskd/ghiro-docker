Update: 2024-03-28

I'm far from a Docker expert, but I've managed to stumble my way through updating this repo so that it _should_ work without much fuss. Please take note of the configuration settings in local_settings.py - very little (read: none) care went into making sure this had safe and secure defaults, so ensure you're running it in a secure environment that is not exposed to the internet. A lot of the packages used are several years old and likely come with several fun CVEs.

---


To install Ghiro using Docker, from the root of this project run

```
docker-compose build ghiro && docker-compose up -d 
```
Ghiro will then be available in your browser at [http://localhost:9991/](http://localhost:9991/)

Default username: **ghiro**

Default password: **ghiromanager**

To upload images, place the images you want to import into the `images/` folder. In the interface, add folder `uploads/{your folder}`. 

If the images are not being processed after upload, run `docker exec -it {container_name} /usr/bin/python /var/www/ghiro/manage.py process`
