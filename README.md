# PAMP_REBORN

## Pre-installation:

1. Check that you have ```docker```, ```docker-machine``` and ```docker-compose``` by doing:
```
docker -v
docker-machine -v
docker-compose -v
```
if you get ```command not found``` then install what you need with brew and after that go back to point 1

2. Create a new directory called ```.docker``` into ```goinfre``` like this
```
mkdir /Users/arizzell/goinfre/.docker
```
then we have to create a symbolic link to that directory so that you won't run out of space:
```
cd ~ && ln -s goinfre/.docker .docker
```
now we can create a virtual machine that will host our servers
```
docker-machine create dev && eval $(docker-machine env dev)
```

## Installation:

1. Run this command to clone the repo into ```/tmp```
```
cd /tmp && \
git clone https://github.com/andrearizzello/PAMP_Reborn.git && \
cd PAMP_Reborn
```

2. Edit the ```docker-compose.yml``` file by replacing ```DIR``` with the folder of your project (usually where you have the ```index.php``` or ```index.html``` file)

3. Run ```docker-compose up -d```

## How to use it with php:

1. create an ```index.php``` file and put inside this code:

```
<?php
$servername = "db";
$username = "root";
$password = "admin";

try {
    $conn = new PDO("mysql:host=$servername;dbname=dbtest", $username, $password);
    echo "Connected successfully";
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}
```

## Stopping containers:

1. Run ```docker-compose down --volumes``` to completely remove the webserver apache and mysql