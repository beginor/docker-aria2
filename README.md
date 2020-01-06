# docker-aria2

aria2 and httpd (busybox), you can use any webui as you like!

## Sample usage:

### 1. Get the image

#### Pull from docker hub

```sh
docker pull beginor/aria2:1.35.0
```

#### Or build it

```sh
https://github.com/beginor/docker-aria2.git aria2
cd aria2
./build.sh
```

### 2. Download your favorite web ui of aria2 (test with [webui-aria2](https://github.com/ziahamza/webui-aria2) and [AriaNg](https://github.com/mayswind/AriaNg)) , and extract it to a webui folder.

### 3. Create a `docker-compose.yml` like this, and you can change it as you like:

```yml
version: "3"
services:
  aria2:
    image: beginor/aria2:1.35.0
    container_name: aria2
    ports:
      - 6800:6800 # aria2 rpc port
      - 6880:6880 # http port
    volumes:
#      - ./aria2.conf:/aria2/aria2.conf
#      - ./httpd.conf:/aria2/httpd.conf
      - ./webui:/aria2/webui
      - ~/Downloads:/aria2/downloads
```

### 4. Run and enjoy with `http://localhost:6880/`:

```sh
docker-compose up -d
```
