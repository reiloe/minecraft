FROM eclipse-temurin:21-jdk-jammy

WORKDIR /minecraft

COPY server/eula.txt server/server.properties $WORKDIR/

RUN wget https://piston-data.mojang.com/v1/objects/6bce4ef400e4efaa63a13d5e6f6b500be969ef81/server.jar

ENTRYPOINT ["java" , "-Xmx1024M" , "-Xms1024M" , "-jar" , "server.jar" , "nogui"]