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

RUN aptitude install -y python3-pip
RUN aptitude install -y vim
RUN aptitude install -y mecab libmecab-dev mecab-ipadic-utf8
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR ./mecab-ipadic-neologd
RUN ./bin/install-mecab-ipadic-neologd -n -y
WORKDIR ../
ADD ./mecabrc /etc/mecabrc

RUN pip3 install networkx
RUN pip3 install python-louvain
RUN pip3 install numpy
RUN pip3 install requests
RUN pip3 install ipython
RUN pip3 install plyvel
RUN pip3 install mecab-python3
RUN pip3 install keras
RUN pip3 install tensorflow
ADD ./vimrc /home/jovyan/.vimrc


