FROM eclipse-temurin:21-jdk-jammy

WORKDIR /minecraft

COPY server/eula.txt server/start.sh server/server.jar server/server.properties $WORKDIR

RUN groupadd gameadmins && useradd -m -g gameadmins mcadmin && chown -R mcadmin /minecraft

USER mcadmin

ENTRYPOINT ["/bin/bash", "start.sh"]