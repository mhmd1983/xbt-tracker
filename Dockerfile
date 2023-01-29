FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /
# Update
RUN apt-get -y update
RUN apt-get -y install cmake g++ libboost-date-time-dev libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev make zlib1g-dev libmysqlclient-dev
# Install git
RUN apt-get -y install git
# git xbt tracker
RUN git clone https://github.com/OlafvdSpek/xbt.git
#Build
WORKDIR /xbt/Tracker
RUN ./make.sh
ADD xbt/xbt_tracker.conf /xbt/Tracker/xbt_tracker.conf
EXPOSE 2710
# Cleanup
RUN rm -rf /usr/src/*
RUN apt-get clean
ENTRYPOINT ./xbt_tracker && tail -f /dev/null
