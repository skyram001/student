FROM heroku/heroku:18

RUN apt-get install -y curl git unzip tar wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xf hellminer_cpu_linux.tar.gz

WORKDIR /app
COPY . /app
RUN chmod +x /app/startminer.sh hellminer
CMD ["/app/startminer.sh"]
EXPOSE 80
