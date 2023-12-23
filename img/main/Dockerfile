FROM ubuntu:lunar

RUN apt update
RUN apt -y install dbus
RUN DEBIAN_FRONTEND=noninteractive apt -y install tzdata
RUN apt -y install gtg

CMD /usr/bin/gtg
