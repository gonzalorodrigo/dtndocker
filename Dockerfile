FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code



RUN apt-get update
RUN apt-get -y install python3-dev python-dev libzmq3-dev 
RUN apt-get -y install npm nodejs-legacy
RUN npm install -g configurable-http-proxy
RUN apt-get -y install libfreetype6-dev
RUN apt-get -y install python3-matplotlib
RUN apt-get -y install pciutils
ADD requirements.txt /code/
RUN pip install -r requirements.txt

RUN useradd -ms /bin/bash myuser
RUN echo "myuser:Docker!" | chpasswd
USER myuser
WORKDIR /home/myuser
RUN git clone https://github.com/gonzalorodrigo/DTN_monitor.git
WORKDIR /home/myuser/DTN_monitor
RUN git fetch
RUN git checkout filegraph
USER root
RUN pip install -r requirements.txt
WORKDIR /home/myuser/DTN_monitor
CMD ["jupyterhub"]
