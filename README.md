# Project Minecraft Server

The goal of this project is to dockerize a Minecraft Server.

## Table of content

1. [Prerequisites](#Prerequisites)
2. [Quickstart](#Quickstart)
3. [Usage](#Usage)

### Prerequisites

- Git
- Docker
- Docker Compose

### Quickstart

- Open a terminal

- Navigate to a folder of choice

```bash
cd my/test/folder
```

- Clone the project

```bash
git clone https://github.com/reiloe/minecraft.git
```

- Navigate into the root folder (named minecraft)

```bash
cd minecraft
```

- run the following command:

```bash
./setup.sh
```

> [!CAUTION]  
> You have to accept the EULA to run the Minecraft server !!!

### Usage

After the [Quickstart](#Quickstart) the Minecraft server is up and running with default settings.  

You can now test the server by connecting to the server via your minecraft launcher with the IP of your server.

Changes to the server.properties file can be used to customize the Minecraft server ([Read more](https://minecraft.wiki/w/Server.properties))

Before changing the settings, you should shut down the Minecraft server.

```bash
docker compose stop
```

After you have customized the file, start the server with the new settings.

```bash
docker compose start
```
