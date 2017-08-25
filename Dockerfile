FROM logimethods/jboss-eap-6.1.0-atg:latest

ARG URL
ARG USERNAME
ARG PASSWORD
RUN curl -K -0 -u "$USERNAME:$PASSWORD" "$URL" -o standalone.ear
RUN ls -als
