#!/bin/bash



echo "Starting"

git clone -b develop https://github.com/freqtrade/freqtrade.git freqtrade_git
cd freqtrade_git
./setup.sh --install


if [ ! -f /data/config.json ]; then
  echo "building userdir"
  freqtrade create-userdir --userdir /data
  echo "building initial config"
  freqtrade new-config --config /data/config.json
fi

sleep 5000000

echo "Starting app"
freqtrade trade --logfile /data/logs/freqtrade.log --db-url sqlite://///data/tradesv3.sqlite --config /data/config.json --strategy SampleStrategy
