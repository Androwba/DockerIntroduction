## Part 1. Ready-made docker
* Берем официальный докер образ с **nginx** и выкачиваем его при помощи `docker pull`
![pull_nginx](/src/s21_Screenshots/1.png)
* Проверяем наличие докер образа через `docker images`     
![docker_images](/src/s21_Screenshots/2.png)
* Запускаем докер образ через `docker run -d [image_id|repository]`
![docker_run](/src/s21_Screenshots/3.png)
* Проверяем, что образ запустился через `docker ps`
![docker_ps](/src/s21_Screenshots/4.png)
* Смотрим информацию о контейнере через `docker inspect [container_id|container_name]` и определяем размер контейнера, список замапленных портов и ip контейнера
![docker_inspect](/src/s21_Screenshots/5.png)
* Останавливаем докер образ через `docker stop [container_id|container_name]` и проверяем , что образ остановился
![docker_stop](/src/s21_Screenshots/6.png)
* Запускаем докер с замапленными портами 80 и 443 на локальную машину через команду *run* 
![docker_ports_mapping](/src/s21_Screenshots/7.png)
* Проверяем, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**     
![localhost_nginx](/src/s21_Screenshots/8.png)
* Перезапускаем докер контейнер через `docker restart [container_id|container_name]` и проверяем , что контейнер запустился
![docker_restart](/src/s21_Screenshots/9.png)

## Part 2. Operations with container
* Читаем конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*
![docker_exec](/src/s21_Screenshots/10.png)
* Создаем на локальной машине файл *nginx.conf* и настраиваем в нем по пути */status* отдачу страницы статуса сервера **nginx**
![docker_nginx_conf](/src/s21_Screenshots/11.png)
* Копируем созданный файл *nginx.conf* внутрь докер образа через команду `docker cp` и перезапускаем **nginx** внутри докер образа через команду *exec*
![docker_reload](/src/s21_Screenshots/12.png)
* Проверяем, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**   
![localhost:80/status](/src/s21_Screenshots/13.png)
* Экспортируем контейнер в файл *container.tar* через команду *export* и останавливаем контейнер     
![container_tar](/src/s21_Screenshots/14.png)
* Удаляем образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
![docker_rmi](/src/s21_Screenshots/15.png)
* Удаляем остановленный контейнер                                 
![docker_prune](/src/s21_Screenshots/16.png)
* Импортируем контейнер обратно через команду *import*     
![docker_import](/src/s21_Screenshots/17.png)
* Запускаем импортированный контейнер
![run_import_container](/src/s21_Screenshots/18.png)
* Проверяем, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**      
![localhost_server](/src/s21_Screenshots/19.png)