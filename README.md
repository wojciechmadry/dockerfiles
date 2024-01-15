# Dockerfiles
Repository with dockerfiles for various programs I sometimes use and don't want to install them on my local system.

:warning: When you build a docker image with program, remember that you accept the rules of that program (License etc...) :warning:

# How to run docker image (with GUI)

[More details](https://gist.github.com/MarcinZukowski/ecea29823907df3386c2cac7b56e0385)

---
Add permission to docker:

```sh
xhost +local:docker
```
---
Run image:

```sh
docker run -itd --privileged --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name <CONTAINER_NAME> <IMAGE_NAME>
```
---
Connect to container:

```sh
docker exec -it <CONTAINER_NAME> /bin/bash
```
---
Copy file/folder to container:

```sh
docker cp <NAME> <COTNAINER_NAME>:<PATH>
```
---
Copy file/folder from container:

```sh
docker cp <COTNAINER_NAME>:<PATH> <NAME>
```
---
Stop container:

```sh
docker stop <CONTAINER_NAME>
```

---
Start container:

```
docker start <CONTAINER_NAME>
```
---
Remove container:

```sh
docker container rm <CONTAINER_NAME>
```

# Dockerfiles list

### [IDA](https://hex-rays.com/ida-free/)

Build:

```sh
make ida
```

Run example:

```sh
xhost +local:docker
docker run -itd --privileged --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name ida ida ida64
docker start ida
```

### [balenaEtcher](https://etcher.balena.io)

Build:

```sh
make etcher
```

Run example:

```sh
xhost +local:docker
docker run -itd --privileged --env="DISPLAY" --volume="/dev:/dev" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name etcher etcher /ws/etcher.AppImage
docker start etcher
```

### ssh

Build:

```sh
make ssh
```

Run example:

```sh
docker run -itd --name ssh ssh /bin/sh
docker start ssh
docker exec -it ssh ssh {USER}@{IP}
```

### [KiCad](https://www.kicad.org/)

Build:

```sh
make kicad
```

Run example:

```sh
xhost +local:docker
docker run -itd --privileged --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name kicad kicad kicad
docker start kicad
```

### [surf](https://surf.suckless.org/)

Default page is: [deepl](https://www.deepl.com/translator)

Build:

```sh
make surf
```

Run example:

```sh
xhost +local:docker
docker run -itd --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name surf surf
docker start surf
```
