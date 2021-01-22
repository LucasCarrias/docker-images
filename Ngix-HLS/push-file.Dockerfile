FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y software-properties-common
RUN add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update -y && apt-get install -y ffmpeg

COPY build-playlist.sh build-playlist.sh
COPY push-audio-stream.sh push-audio-stream.sh
COPY push-video-stream.sh push-video-stream.sh

RUN chmod +x build-playlist.sh push-audio-stream.sh push-video-stream.sh