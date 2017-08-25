FROM logimethods/jboss-eap-6.1.0-empty:latest

ARG URL
ARG USERNAME
ARG PASSWORD
RUN curl -u "$USERNAME:$PASSWORD" "$URL" -o standalone.ear
#RUN echo "curl -K -u $USERNAME:$PASSWORD $URL -o standalone.ear"
#RUN ls -als
RUN cp standalone.ear ${JBOSS_HOME}/standalone/deployments/standalone.ear.file \
    && pushd ${JBOSS_HOME}/standalone/deployments/ \
    && touch standalone.ear.dodeploy \
    && export PATH=$JAVA_HOME/bin:$PATH \
    && mkdir standalone.ear \
    && pushd standalone.ear \
    && jar -xf ../standalone.ear.file \
    && popd \
    && rm standalone.ear.file \
    && popd
