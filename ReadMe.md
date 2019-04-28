# Firefox in Docker on Windows

Inspired by article [Run GUI app in linux docker container on windows host](https://dev.to/darksmile92/run-gui-app-in-linux-docker-container-on-windows-host-4kde).

This is a proof of concept being able to start graphical applications using docker containers on Microsoft Windows.


## Prerequisites

Install a *X-Server for Windows* like  [VcXsrv](https://sourceforge.net/projects/vcxsrv/) or [Xming](https://sourceforge.net/projects/xming/).


## First start

Start a shell in project root directory and use following *Docker Compose* command to build and start the container for the first time.

```
docker-compose up -d
```

## Start the container

The container will exit after closing the last browser window.

You can restart the container at any time without a rebuild.

```
docker-compose start browser
```

## Remove the container

Clean-up the container.

```
docker-compose down
```

## Miscellaneous

- The project root directory will be mounted under `/mnt` in container.
- You can change the required Ubuntu version by changing the build argument `UBUNTU_VERSION` with another version number in `docker-compose.yml`.
