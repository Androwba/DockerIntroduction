#!/bin/bash/

gcc s21_web_server.c -lfcgi
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n ./a.out 