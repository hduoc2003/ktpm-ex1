FROM ubuntu:22.04

RUN apt update

# install desktop environment xfce4
RUN apt install -y xfce4 xfce4-goodies

# install tigervnc
RUN apt install -y tigervnc-standalone-server

RUN apt install -y nano


