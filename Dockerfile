FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.12 \
  python3-pip \
  git

RUN pip3 install pyYAML

COPY dzemic.py /usr/bin/dzemic.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
