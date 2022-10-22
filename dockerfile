# 필수 : FROM , COPY, CMD
# WORKDIR : root에다가 하면 파일 정신없어지니까 적당한 곳에 경로 지정해서 해주는 옵션
# https://velog.io/@yh20studio/Docker-Django-%EC%84%9C%EB%B2%84-%EC%9D%B4%EB%AF%B8%EC%A7%80-%EB%A7%8C%EB%93%A4%EA%B8%B0
# https://blog.logrocket.com/dockerizing-django-app/    : 자세한 설명

FROM python:3.10-buster

RUN pip3 install django

WORKDIR /usr/src/app

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]