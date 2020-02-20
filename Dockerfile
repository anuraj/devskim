FROM debian

LABEL maintainer="anuraj@dotnetthoughts.net"

LABEL version="0.1.11"

LABEL description="The unofficial image for Microsoft DevSkim - DevSkim is a framework of IDE extensions and Language analyzers that provide inline security analysis in the dev environment as the developer writes code."

RUN apt-get update \
  && apt-get install -y wget libunwind8 icu-devtools \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Microsoft/DevSkim/releases/download/0.1.11/devskim-0.1.11_amd64.deb

RUN dpkg -i devskim-0.1.11_amd64.deb

RUN apt-get install -f

ENTRYPOINT [ "/usr/bin/devskim" ]
