FROM python:3.15.2-slim

WORKDIR /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 500

CMD [ "python", "app.py"]
