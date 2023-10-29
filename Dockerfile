from python:3

run pip3 install django==4.2

copy . .

run python manage.py migrate

cmd ["python","manage.py","runserver","0.0.0.0:8000"]