FROM debian

LABEL maintainer="anuraj@dotnetthoughts.net"

LABEL version="0.4.105"

LABEL description="The unofficial image for Microsoft DevSkim - DevSkim is a framework of IDE extensions and Language analyzers that provide inline security analysis in the dev environment as the developer writes code."

RUN apt-get update \
  && apt-get install -y wget libunwind8 icu-devtools curl apt-transport-https gnupg \
  && rm -rf /var/lib/apt/lists/*

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list'

RUN apt-get update \
  && apt-get install devskim

ENTRYPOINT [ "/usr/bin/devskim" ]