## simple RESTAPI demo in Django

Using dockers as quick practice then demo Django, Redis, Postgres
And learn how to turn docker-compose into K8s
<img width="250" alt="image" src="https://github.com/daniel0318/django_learn_and_some_tools/assets/10074834/42ac3cb7-7713-4098-94d7-e580729751d2">


## Learning Points
1. Django RESTFramework functions: JWT, APIVIEWS, mixin/viewsets 
2. ORM structure and some search optimization
3. redis usage 
4. docker-compose to integrate web server/DB/redis server
5. use K8s(minikube) to replace docker-compose


## Guide to launch services 


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
- Now everything built up then you can request API in uri: localhost:8000/api/
- so you can use Postman provided below to test

[postman collections](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/django_learn_and_some_tools.json)

<img width="889" alt="image" src="https://github.com/daniel0318/django_learn_and_some_tools/assets/10074834/7d57b55c-9141-4cdf-bb6c-74c187490c69">





Or you can build in K8s instead of docker-compose
```
./restart_resources.sh
```


## features introduction

[docker-compose](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/docker-compose.yml) + [Dockerfile](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/Dockerfile)
- build all dockers
- set Entrypoint to call migrate to setup DB and insert dummy data

[views/user.py](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/accounts/views/user.py)
- using JWT to authenticate


[views/company.py](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/accounts/views/company.py)
- practice VIEWS: APIVIEWs/mixin/Generic Views/ViewSets to do the same function APIs
  

[views/company_cache.py](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/accounts/views/company_cache.py)
- use Redis as Cache server to get/update


[views/company_search.py](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/accounts/views/company_search.py)
- select_related in foreign key, prefetch_related in reversed-fkey search 


[Kubernetes](https://github.com/daniel0318/django_learn_and_some_tools/blob/main/restart_resources.sh)
- use shell to launch K8s(*.yaml) which can replace docker-compose

