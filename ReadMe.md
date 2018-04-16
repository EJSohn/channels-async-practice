# Channels tutorial

Channels 공식 페이지에 있는 documentation
[https://channels.readthedocs.io/en/latest/tutorial/index.html](https://channels.readthedocs.io/en/latest/tutorial/index.html) 를 따라하며 만든 리포지토리입니다.

### How to run (Local)

channel layer를 위해 redis 서버가 필요합니다.


docker를 통해 받아서 사용하는 게 가장 쉽습니다.

```
docker pull redis
docker run --name channels-redis -d -p 6379:6379 redis
```


실행하는 방법은 두가지가 있습니다.


```
python manage.py runserver 0.0.0.0:your-port

```

```
daphne -b 0.0.0.0 -p 8081 channels_tutorial.asgi:application
```




