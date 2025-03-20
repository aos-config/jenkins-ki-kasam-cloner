FROM python:3
WORKDIR /app

COPY requirements.txt requirements.txt
COPY flask_app.py flask_app.py

RUN pip install -r requirements.txt
CMD ["python3","flask_app.py"]
