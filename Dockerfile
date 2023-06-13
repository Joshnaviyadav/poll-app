FROM ubuntu:latest
WORKDIR /home/joshnavi/sender/Django-Poll-App 
COPY . /home/joshnavi/sender/Django-Poll-App
RUN  apt update
RUN  apt install python3-pip -y
COPY requirements.txt .
RUN pip install -r requirements.txt 
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
