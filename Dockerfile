FROM jupyter/tensorflow-notebook:latest

MAINTAINER m-ochi <masanao.oochi@gmail.com>

RUN apt-get update
RUN apt-get install aptitude
RUN aptitude upgrade
RUN aptitude install language-pack-ja-base
RUN aptitude install language-pack-ja
RUN aptitude install curl
RUN aptitude install file
RUN aptitude install texlive-full
RUN aptitude install ssh
RUN update-locale LC_ALL=ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8
RUN update-locale LANGUAGE=ja_JP.UTF-8

#ENV LANG=ja_JP.UTF-8
#ENV LC_ALL=ja_JP.UTF-8
#ENV LANGUAGE=ja_JP.UTF-8

RUN aptitude install python-pip
RUN aptitude install vim
RUN aptitude install mecab libmecab-dev mecab-ipadic-utf8
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR ./mecab-ipadic-neologd
RUN ./bin/install-mecab-ipadic-neologd -n -y
WORKDIR ../
ADD ./mecabrc /etc/mecabrc

RUN aptitude install python-mecab
RUN pip2 install networkx
RUN pip2 install python-louvain
RUN pip2 install numpy
RUN pip2 install requests
RUN pip2 install ipython
RUN pip2 install plyvel
RUN pip2 install mecab-python
ADD ./vimrc /home/jovyan/.vimrc
ADD ./sitecustomize.py /usr/lib/python2.7/sitecustomize.py

-

