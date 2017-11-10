Container to run a Jupyter notebook and two anonymous grid-ftp instances.

Test Command:

~~~
globus-url-copy -vb -fast -p 4  ftp://192.168.200.2:2811/data/10G.dat ftp://192.168.200.2:2811/data/10G-b.dat
globus-url-copy -vb -fast -p 4  ftp://192.168.100.2:2811/data/10G.dat ftp://192.168.200.2:2811/data/10G-b.dat
~~~




##Cheat-sheet

###Installing docker
~~~
sudo sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-comm
on
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
sudo apt-get update
sudo apt-get install docker-ce
~~~

###Installing certbot
~~~
echo "deb http://ppa.launchpad.net/certbot/certbot/ubuntu xenial main" > /etc/apt/sources.list.d/certbot-ubuntu-certbot-xenial.list 
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot 
~~~

###Generate certificate
~~~
sudo certbot certonly --standalone -w /var/certs/caliber -d 4x100g-dtn-mgmt2.sc17.org -m gprodrigoalvarez@lbl.gov  --agree-tos 
~~~
