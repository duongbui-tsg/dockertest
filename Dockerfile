FROM python:3.8-alpine3.12

WORKDIR ./

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]