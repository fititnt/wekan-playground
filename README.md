# wekan-playground
Rocha's playgrond for Wekan ("The open-source Trello-like kanban").

In my honest opinion, for who is looking for a open source & self-hosted
Trello-like software, you can use <https://github.com/wekan/wekan-mongodb> as
easy way to test on Docker.

- Website: <https://wekan.github.io/>
- General install instructions with Docker: <https://github.com/wekan/wekan/wiki/Docker>
- Installer with docker-compose: <https://github.com/wekan/wekan-mongodb>

---

![10-imported-board-from-trello.png](screenshots/10-imported-board-from-trello.png)

## Logbook

```bash

## Download docker-compose.yml file from maitaner at https://github.com/wekan/wekan-mongodb
wget https://raw.githubusercontent.com/wekan/wekan-mongodb/master/docker-compose.yml

docker-compose up

# See fulllogs.sh

## Open your browser at http://127.0.0.1 or http://localhost
xdg-open http://127.0.0.1

## Edit docker-compose services.wekan.environment ROOT_URL to a URL used
## or some URLs will redirect user to http://example.com/...
vim docker-compose.yml

# Stop docker-compose (Ctrl + C on screen running docker-compose up)

# Start again docker-compose
docker-compose up

## Stop and clean all resources (DO NOT RUN `docker-compose down --volumes --rmi all` ON PRODUCTION)
docker-compose down --volumes --rmi all

```

See [fulllogs.sh](fulllogs.sh).

## Screenshots

![0-docker.png](screenshots/0-docker.png)
![1-sign-in-login.png](screenshots/1-sign-in-login.png)
![2-sign-in-create-account.png](screenshots/2-sign-in-create-account.png)
![3-welcome.png](screenshots/3-welcome.png)
![4-admin-email.png](screenshots/4-admin-email.png)
![5-admin-people.png](screenshots/5-admin-people.png)
![6-example-board-part1.png](screenshots/6-example-board-part1.png)
![7-card-testing-part1.png](screenshots/7-card-testing-part1.png)
![8-card-testing-part2.png](screenshots/8-card-testing-part2.png)
![9-option-to-import-from-wekan-and-trello(niceee).png](screenshots/9-option-to-import-from-wekan-and-trello(niceee).png)
![10-imported-board-from-trello.png](screenshots/10-imported-board-from-trello.png)


## Enviroment

```
## Ubuntu 16.04.4 LTS
# Requires Need docker and docker-compose. Used:

$ docker -v
Docker version 17.12.1-ce, build 7390fc6

$ docker-compose -v
docker-compose version 1.18.0, build 8dd22a9
```
