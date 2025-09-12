FROM eclipse-temurin:21-jdk-jammy

WORKDIR /minecraft

COPY server/eula.txt server/start.sh server/server.jar server/server.properties $WORKDIR/

ENTRYPOINT ["/bin/bash", "start.sh"]