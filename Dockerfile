FROM debian:11-slim

WORKDIR /app

COPY . .
RUN apt update && apt install cowsay -y 
RUN chmod +x cowsay.sh

CMD [ "./cowsay.sh" ]