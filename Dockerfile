FROM jupyter/tensorflow-notebook:latest

MAINTAINER m-ochi <masanao.oochi@gmail.com>
USER root

RUN apt-get update
RUN apt-get install -y aptitude
RUN aptitude -y upgrade
RUN aptitude install -y language-pack-ja-base
RUN aptitude install -y language-pack-ja
RUN aptitude install -y curl
RUN aptitude install -y file
#RUN aptitude install -y texlive-full
RUN aptitude install -y ssh
RUN update-locale LC_ALL=ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8
RUN update-locale LANGUAGE=ja_JP.UTF-8

#ENV LANG=ja_JP.UTF-8
#ENV LC_ALL=ja_JP.UTF-8
#ENV LANGUAGE=ja_JP.UTF-8

RUN aptitude install -y python-pip
RUN aptitude install -y python3-pip
RUN aptitude install -y vim
RUN aptitude install -y mecab libmecab-dev mecab-ipadic-utf8
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR ./mecab-ipadic-neologd
RUN ./bin/install-mecab-ipadic-neologd -n -y
WORKDIR ../
ADD ./mecabrc /etc/mecabrc

RUN aptitude install -y python-mecab
RUN pip2 install networkx
RUN pip2 install python-louvain
RUN pip2 install numpy
RUN pip2 install requests
RUN pip2 install ipython
RUN pip2 install plyvel
RUN pip2 install mecab-python
RUN pip2 install neologdn
RUN pip  install plotly
RUN pip  install psutil
RUN pip  install gensim
RUN pip  install neologdn
RUN npm install plotly.js-dist
RUN npm install -g n
RUN npm latest
RUN npm install -g electron --unsafe-perm=true --allow-root
RUN aptitude install libxtst6
RUN aptitude install xvfb
RUN jupyter labextension install @jupyterlab/plotly-extension
ADD ./vimrc /home/jovyan/.vimrc
ADD ./sitecustomize.py /usr/lib/python2.7/sitecustomize.py


