FROM logimethods/jboss-eap-6.1.0-atg:latest

ARG URL
ARG USERNAME
ARG PASSWORD
#RUN curl -K -u "$USERNAME:$PASSWORD" "$URL" -o standalone.ear
RUN echo "curl -K -u $USERNAME:$PASSWORD $URL -o standalone.ear"
RUN ls -als
