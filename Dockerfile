FROM python:3.8-slim-buster

WORKDIR /tapp

COPY requirements.txt .

RUN pip install torch==1.9.0

RUN pip install --no-cache-dir -r requirements.txt

COPY . /tapp

EXPOSE 8000

CMD ["uvicorn", "tapp:app", "--host", "0.0.0.0", "--port", "8000"]
