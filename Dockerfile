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

ARG J_USER="myuser"
ARG J_PASS="Docker!"

RUN useradd -ms /bin/bash "$J_USER"
RUN echo "$J_USER:$J_PASS" | chpasswd
USER  "$J_USER"
WORKDIR "/home/${J_USER}"
RUN git clone https://github.com/gonzalorodrigo/DTN_monitor.git
WORKDIR "/home/${J_USER}/DTN_monitor"
RUN git fetch
RUN git checkout filegraph

USER root
CMD pip install "/home/${J_USER}/requirements.txt"
WORKDIR "/home/${J_USER}/DTN_monitor"
ADD jupyterhub_config.py "/home/${J_USER}/DTN_monitor"
CMD ["jupyterhub"]
