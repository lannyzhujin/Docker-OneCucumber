# Docker-appiumlib-and-cucumber

####Pull ruby applium_lib and cucumber image
```
user@local-machine:~/workspace/OneCucumber$ sudo docker pull lannyzhujin/ruby_appiumlib_and_cucumber:0.2
```

####Run OneCucumber client
OneCucumber project is in path /home/workspace/OneCucumber
```
user@local-machine:~/workspace/OneCucumber$ sudo docker run -it --rm --name test  -v /home/lanny/workspace/OneCucumber/:/home/workspace/OneCucumber lannyzhujin/ruby_appiumlib_and_cucumber:0.2  cucumber -p "iphone6p-9_0" "features/client.feature"
```
