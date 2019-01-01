# docker-aria2

aria2 and httpd (busybox), you can use any webui as you like!

## Sample usage:

### 1. Get the image with `docker pull`:

```sh
docker pull beginor/aria2:1.34.0
```

### 2. Download your favorite web ui of aria2 (test with [webui-aria2](https://github.com/ziahamza/webui-aria2) and [AriaNg](https://github.com/mayswind/AriaNg)) , and extract it to a webui folder.

### 3. Create a `docker-compose.yml` like this, and you can change it as you like:

```yml
version: "3"
services:
  aria2:
    image: beginor/aria2:1.34.0
    container_name: aria2
    ports:
      - 6800:6800
      - 6880:6880
    volumes:
#      - ./aria2.conf:/aria2/aria2.conf
#      - ./httpd.conf:/aria2/httpd.conf
      - ./webui:/aria2/webui
      - ~/Downloads:/aria2/downloads
```

### 4. Run and enjoy with:

```sh
docker-compose up -d
```
