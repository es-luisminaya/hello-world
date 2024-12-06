FROM ubuntu:focal-20191030

WORKDIR /app

COPY . .
RUN apt-get update && apt-get install cowsay -y
RUN chmod +x cowsay.sh

CMD [ "sh", "cowsay.sh" ]