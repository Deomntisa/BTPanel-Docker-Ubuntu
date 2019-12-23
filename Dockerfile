FROM ubuntu:16.04
#指定运行目录
WORKDIR /root/

RUN apt-get update -y && apt-get install sudo wget -y

ADD install.sh install.sh
ADD bt bt
ADD tools.py tools.py
#运行脚本
RUN sudo bash install.sh

CMD bt && bash --login
CMD /etc/init.d/bt start && bash --login
