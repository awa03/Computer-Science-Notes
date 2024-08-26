
# Assignment 5
**Aiden Allen**

In this assignment I learned the basics of docker, as well as how to create utilize and update docker containers.

****
## Docker Lessons
These lessons, found on the [Play With Docker site](https://training.play-with-docker.com/), The lessons completed are as follows:
- [Your First Linux Containers](https://training.play-with-docker.com/ops-s1-hello)
- [Customizing Docker Images]

### Creating a Docker Account
When creating a docker account I simply navigated to the [Docker Hub Website](https://hub.docker.com/) and created an account through my github login. This would later cause me a brief bit of trouble, that maybe worth noting. 

### 1. Your First Linux Containers

The first step when login into any new linux distribution is to find more info on it of course! To accomplish this I entered the following command in order to gain more insight as to what distribution I was currently using within the web shell.

```sh
uname -a
```

The screenshot below details the distribution being used "<i>Ubuntu</i>", as well as the time, date, and much more information about the machine that we are using. 

![[pic1.png]]

Following this we will actually start using docker! The first stage was get the <i>Hello World image</i>. This image will give us a sort of welcoming to Docker and describe to the user how remote as well as local images maybe accessed. This is very similar to how hello world is utilized within programming languages to teach the most basic form of program.

```sh
docker container run hello-world
```

This image can be gathered using above command and the details of the output can be found below. 

![[pic2 1.png]]


![[pic3 1.png]]

The next step was to install the alpine image. In order to do this we follow the same aforementioned steps running the command below, with the added ability of listing the contents.

```sh
docker container run alpine ls -l
```

This installation now gives us the ability view our container, we can do this by listing the contents of the container. This can be done by using the command below 

![[pic4 1.png]]

The addition of the following lines allows us to see the differences between the root container and the alpine docker container. We generated a file containing <i>"hello world"</i>. I then performed the list command in order to verify that this file is online contained within this alpine container.

```sh
docker container -it alpine /bin/ash
echo "Hello World" > hello.txt
ls
```

Following the completion of this stage I failed to understand the following step. This was later remedied however this stage proved beneficial through gaining more exposure to the workings of docker.

I could not find a "figlet" container when attempting to run the docker run figlet command, I managed to find the search for a container command through the docker help flag.

```sh
docker search figlet
```

Following this I downloaded the mwendler figler image, which worked! I installed this container using `docker container run <package>`.  Following the installation I did manage to get figlet to work as expected!

![[pic5 1.png]]

After going over the tutorial steps, as well as the sample submission I realized the error that I was facing was due to my lack of understanding of the problem. I was not supposed to use an external image in order to use figlet, I was supposed to create a container of my own. 

I remedied this by using the aforementioned `docker container run ubuntu bash` command in order to enter a docker container, using the ubuntu linux distribution and the bash shell. From this stage I ran `apt-get update`, which can be used due to default root access (instead of `sudo apt-get <package>`). This stage was completed in order to verify that my linux distribution was up to date ensuring dependencies would be resolved for figlet. 

In fact I previously ignored the update command, which led to the figlet package not being found! So the update command is essential to this tutorial stage.

![[pic6 1.png]]

Figlet can then be installed, and executed. Adding the string `"Hello World"` allows us to view a banner made from ascii characters of the string.

**Install**
```sh
sudo apt-get install figlet        # sudo not needed if root
```

Following the successful test and installation of figlet I then listed the containers and images in order to identify the container in which we installed figlet to.

```sh
docker container ls -a             # list containers (all)
docker image ls                    # list the images
```

The container was then committed using the unique identifier `0f054`, since this string of characters is unique to the container id. Once committed the container was now present within the image list. 

![[pic7 1.png]]

As you may have already noticed however the tag for the committed image is unset. We need to set this image tag in order to help us identify the container as well as build the image in the following step. Once again we used a unique identifier (IMAGE ID this time), in order to address the image tag.

```sh
# template
docker image tag <unqiue img id> <name>
# Example used
docker image tag d0bb8b ourfiglet
```

Now we can build our image and create the first version! We can accomplish this through the image build command that can be found below. 

![[pic8 1.png]]

![[pic9 1.png]]

Following our successful build we will test our new container! Given our index and docker file that we created in the previous stages we receive the message `Hello from <id>`. Running the command `docker image ls` will also allow us to verify that this new image was created and has the new version tag!

Following this stage we will update our index.js file in order to simulate version control changes within docker containers. We have now successfully updated our docker image to output `this is v0.2` upon the containers execution.

![[pic10 1.png]]

The final stage is to implement these changes. We can accomplish this through the same step as before. Upon the successful build of the image we have successfully built 2 versions of our hello docker image.

![[pic11 1.png]]

![[pic12 1.png]]

![[pic13 1.png]]

****
## 2. LAMP stack using Docker on Ubuntu

I began by creating my virtual machine through Virtual Box which I had never used prior to this assignment. I found Virtual Machine to be much more user friendly that Azure, due to my prior experiences with Linux installations.  I attempted to install the minimal version, however it did not seem to work, possibly due to a issue with the iso file that I found online. 

After failing to install the minimal ubuntu distribution I decided to download the full 20.04.6 release. This installation took much longer, and I decided to allocate more of my systems resources to it because it is a much larger distribution compared to the alternative. 

I installed my Lamp Stack (Linux, Apache, MySQL, PHP) using the [provided tutorial](https://linuxconfig.org/how-to-create-a-docker-based-lamp-stack-using-docker-on-ubuntu-20-04). This was accomplished through the following stages. 

#### Installing Packages
The first stage was to install the required packages. To accomplish this goal I needed to run the following command.

```sh
sudo apt install docker-compose
```

This seems easy enough... However my shell promptly informed me that the virtual box account was not contained within the sudoers file. This means that I would not be able to run the commands with root access (I would not be able to complete the assignment). My first idea was to add myself to the sudoers file or to modify my permissions manually. This of course did not work, seeing as I don't have root access to perform these commands! 

I finally discovered that the command `su -` allowed me to gain root access and download the necessary package.

![[pic14.png]]

#### Environment Setup
Once the installation had completed I created a document root directory as well as a file titled `docker-compose.yml`. This file would allow me to add the LAMP stack to my docker container. 

```yml
version: '3.7'
services:
    php-httpd:
        image: php:7.3-apache
        ports:
            - 80:80
        volumes:            - "./DocumentRoot:/var/www/html"
```

Within the docker compose file I added the code above. The code above allows me to add php as the Apache web server module. The image used is provided on docker hub to be used as a base container. We used this within the previous exercise. To append the docker compose file I utilized the vim and nano text editors.

I then composed the docker using `docker-compose up -d`. This did not work on the first execution due to some minor spelling errors, however once corrected a series of pull notifications emerged.

![[pic15.png]]

Once completed I added the php info line to my index.php file. This will allow us to verify that php was installed as well as view some more info on the php installation. This can be found under the local host.

![[pic16.png]]

Below is an image detailing the php version that we installed. We can see some information such as the system that we are currently running the program on as well as the build date, and many other details about the system.

![[pic17.png]]

#### More Installation

The next stage was to define the maria db service. This will act as our database layer. 

```sh
version: '3.7'

services:
    php-httpd:
        image: php:7.3-apache
        ports:
            - 80:80
        volumes:
            - "./DocumentRoot:/var/www/html"

    mariadb:
        image: mariadb:10.5.2
        volumes:
            - mariadb-volume:/var/lib/mysql
        environment:
            TZ: "Europe/Rome"
            MYSQL_ALLOW_EMPTY_PASSWORD: "no"
            MYSQL_ROOT_PASSWORD: "rootpwd"
            MYSQL_USER: 'testuser'
            MYSQL_PASSWORD: 'testpassword'
            MYSQL_DATABASE: 'testdb'

volumes:
    mariadb-volume:

```

The updated `docker-compose.yml` file seen above details the defining of the mariadb. As you can see the version is `10.5.2` as well as the time zone (set based on tutorial), authentication information, as well as the database name. This will allow us to login and view / modify information within our database securely. 

```sh
version: '3.7'

services:
    php-httpd:
        image: php:7.3-apache
        ports:
            - 80:80
        volumes:
            - "./DocumentRoot:/var/www/html"

    mariadb:
        image: mariadb:10.5.2
        volumes:
            - mariadb-volume:/var/lib/mysql
        environment:
            TZ: "Europe/Rome"
            MYSQL_ALLOW_EMPTY_PASSWORD: "no"
            MYSQL_ROOT_PASSWORD: "rootpwd"
            MYSQL_USER: 'testuser'
            MYSQL_PASSWORD: 'testpassword'
            MYSQL_DATABASE: 'testdb'

    phpmyadmin:
        image: phpmyadmin/phpmyadmin
        links:
            - 'mariadb:db'
        ports:
            - 8081:80

volumes:
    mariadb-volume:
```

Additionally I did complete the bonus, the code of which can be seen above. The "Bonus section" allows us to control our data base from a more user-friendly interface, rather than using the console.  This integration was rather straight forward! The successful build images can also be seen below.


![[pic18.png]]

Finally in order to verify the success of this exercise I ran the command `docker-container ls -a` in order to ensure our containers were being simulated properly. 

![[pic19.png]]





