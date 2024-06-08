FROM python:3.12.3-alpine
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 80
CMD [ "python", "./bot.py"]
