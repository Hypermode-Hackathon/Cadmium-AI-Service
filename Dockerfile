FROM python:3.11-slim

WORKDIR /app

COPY requirements.in .

RUN pip install --no-cache-dir -r requirements.in

COPY . .

EXPOSE 6970

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "6970"]
