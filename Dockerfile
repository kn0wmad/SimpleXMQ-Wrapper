FROM simplexchat/simplexmq:latest

RUN apt-get update && apt-get install wget curl sudo bash tini -y
RUN wget https://github.com/mikefarah/yq/releases/download/v4.6.3/yq_linux_amd64.tar.gz -O - |\
      tar xz && mv yq_linux_amd64 /usr/bin/yq

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/*.sh
