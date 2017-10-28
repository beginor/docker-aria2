#!/bin/sh
httpd -h /aria2/webui/ -p 0.0.0.0:6880
aria2c --conf /aria2/aria2.conf
