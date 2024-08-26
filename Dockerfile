FROM python:3.9.6

# Create app directory
WORKDIR /app

# Bundle app source
COPY . /app
RUN apk add --no-cache ffmpeg 
RUN pip install --upgrade pip
RUN pip install -r requirements.txt



EXPOSE 3000
CMD [ "python", "webApp.py" ]