FROM heroku/heroku:18

RUN apt-get install -y curl git unzip tar python python3 wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xf hellminer_cpu_linux.tar.gz

RUN chmod +x startminer.sh hellminer
CMD bash startminer.sh
