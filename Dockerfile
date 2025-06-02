# Dockerfile

FROM python:3.10-slim

WORKDIR /app

COPY . /app

# Добавим src в PYTHONPATH
ENV PYTHONPATH=/app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "5000"]