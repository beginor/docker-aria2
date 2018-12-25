#!/bin/sh
httpd -p 6880 -c /aria2/httpd.conf
aria2c --conf /aria2/aria2.conf
