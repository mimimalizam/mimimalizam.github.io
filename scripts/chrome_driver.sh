#! /usr/bin/env bash
set -e

VERSION=${1:-'75.0.3770.8'}
URL="https://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip"

chromedriver -v
wget $URL && unzip chromedriver_linux64.zip

sudo rm -rf /usr/local/bin/chromedriver
sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver


echo "==========================================================="
echo "Using Chrome Driver version: $(chromedriver --version)"
echo "==========================================================="
