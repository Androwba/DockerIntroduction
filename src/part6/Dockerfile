FROM nginx
WORKDIR /home/
COPY ./nginx/nginx.conf /etc/nginx/
COPY ./runcompose.sh /home/runcompose.sh
RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    rm -rf /var/lib/apt/lists/*; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chmod 777 /usr/bin/gpasswd; \
    chmod 777 /usr/bin/newgrp; \
    chmod 777 /bin/su; \
    chmod 777 /bin/mount; \
    chmod 777 /bin/umount; \
    chmod 777 /usr/bin/chsh; \
    chmod 777 /usr/bin/chfn; \
    chmod 777 /usr/bin/chsh; \
    chmod 777 /usr/bin/expiry; \
    chmod 777 /usr/bin/wall; \
    chmod 777 /sbin/unix_chkpwd; \
    chmod 777 /usr/bin/chage; \
    chmod 777 /usr/bin/passwd
USER nginx
HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://localhost/ || exit 1
ENTRYPOINT ["sh", "./runcompose.sh"]