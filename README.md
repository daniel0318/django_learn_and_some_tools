## simple RESTAPI demo in Django

Using dockers as quick practice then demo Django, Redis, Postgres
And learn how to turn docker-compose into K8s

### Learning Points
1. Django RESTFramework functions: JWT, APIVIEWS, mixin/viewsets 
2. ORM structure and some search optimization
3. redis usage 
4. docker-compose to integrate web server/DB/redis server
5. use K8s(minikube) to replace docker-compose

### Guide to launch services 

clone and prepare venv environment
```
git clone git@github.com:daniel0318/django_learn_and_some_tools.git
cd django_learn_and_some_tools
python3 -m venv .venv
source .venv/bin/activate
```
launch services (Dockerfile will do setup environment)
```
docker compose up -d --build
```

Now everything built up then you can request API in uri: localhost:8000/api/

<img width="662" alt="image" src="https://github.com/daniel0318/django_learn_and_some_tools/assets/10074834/c09a3895-f20c-41f0-ab5e-2ca3e23f21f7">

[postman collections] (https://github.com/daniel0318/django_learn_and_some_tools/blob/main/django_learn_and_some_tools.json)

### feature introduction
