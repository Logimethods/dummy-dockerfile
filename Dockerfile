FROM logimethods/jboss-eap-6.1.0-atg:latest

RUN ls -la file-repository
COPY ./file-repository/standalone-1.0.0.ear /tmp
# Comment
