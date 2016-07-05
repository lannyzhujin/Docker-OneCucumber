# Docker-appiumlib-and-cucumber

###1. Get image
####Pull ruby applium_lib and cucumber image
```
user@local-machine:~/workspace/OneCucumber$ sudo docker pull lannyzhujin/ruby_appiumlib_and_cucumber:0.2
```

####Or build image by docker file
````
user@local-machine:~$git clone https://github.com/lannyzhujin/Docker-appiumlib-and-cucumber.git
user@local-machine:~$sudo docker build -t lannyzhujin/ruby_appiumlib_and_cucumber:0.2 .
````

###2. Run container
####Run OneCucumber client
OneCucumber project is in path /home/workspace/OneCucumber
```
user@local-machine:~/workspace/OneCucumber$ sudo docker run -it --rm --name test  -v /home/lanny/workspace/OneCucumber/:/home/workspace/OneCucumber -p 32622:22 lannyzhujin/ruby_appiumlib_and_cucumber:0.2  cucumber -p "iphone6p-9_0" "features/client.feature"
```
