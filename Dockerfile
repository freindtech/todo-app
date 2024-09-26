FROM python:3.12-slim

###########Creating the working Directory ##########

WORKDIR app/

#############Install Requirment dependency########

RUN pip3 install django==4.2

#################Copy the file into working Directory##########

COPY . app/
#################Migrate the Services #####################

RUN python manage.py migrate

###########Run the Application ################

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
