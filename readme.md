# XBT Tracker

A docker image for xbt tracker by [Olaf van der Spek](https://github.com/OlafvdSpek), using ubuntu 20.04 and the latest git for xbt tracker repository

## Configuration

Update xbt/xbt_tracker.conf with mysql server information

Update docker-compose.yml the networks section to connect to another mysql container if needed

```
networks:
  network1:
    name: lamp_default
    external: true
```

Excute the sql file on xbt_tracker database, and that's it run the docker-compose up -d command and visit [http://localhost:2710](http://localhost:2710)
