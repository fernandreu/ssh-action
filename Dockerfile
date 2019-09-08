FROM debian:stable-slim

LABEL "maintainer"="Fernando Andreu"
LABEL "repository"="https://github.com/fernandreu/ssh-action"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="SSH Scripts"
LABEL "com.github.actions.description"="Run full scripts via SSH"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && apt-get install -y \
  openssh-client && \
  rm -Rf /var/lib/apt/lists/*


ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
