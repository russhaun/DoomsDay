# DoomsDay
Docker jail system based on the FreeBSD and BSD Jail system, the ultimae doomsday device for information security.

Utilize with a HoneyPot preferably [Artillery](https://github.com/BinaryDefense/artillery). Redirect any would be attackers into the docker container(fully virtualized enviroment which mimics the host system as best as it can of course you as the user have to configure it that way, inside the dockerfile.yml file and the actual DockerFile) Attackers are then isolated away from the host system in a nullFS style system in which they cannot do any actual harm to the host system itself, after the attacker has exited pilfering what they think is encrypted data, you can trash the docker container and start a new one, rinse and repeat.

# Disclaimer

As this script is still under development, it is greatly appriciated if you as a potential user of this wonderful program would report the issues you find here, so they can be fixed and make this program an amazing suppliment to your organizations security! Thank you very much in advance.

# Please note:
These files reflect the docker image located @ https://hub.docker.com/r/rhaun72/doomsday/ . with them you can build and run the demo container. this is just a concept @ the moment. this is a collabrative effort between(so far) myself and oldkingcone. current image uses py 2.7 with py 3 version in progress.all of my testing is done on windows and assumes similar surrounding env. current docker host running linux containers. windows containers coming soon


# To build:
from a docker cmd line in directory containing files:(yes that is a dot at end)
the rm stuff just removes all interediate containers

 docker build -t <reponame>/doomsday --rm=true --force-rm=true  .
  
 # To run:
 #To run from same cmd line:
 
 docker run -it -p 8080:8888 <reponame>/doomsday
