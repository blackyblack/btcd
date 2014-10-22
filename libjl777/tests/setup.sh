#!/bin/sh
echo "Installing chRuby (to change current Ruby https://github.com/postmodern/chruby)"

wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install
cd ..
rm -R chruby-0.3.8 chruby-0.3.8.tar.gz


echo "Installing RVM (Ruby version manager)"

curl -L https://get.rvm.io | bash -s stable

sudo apt-get install expect-dev # Required to unbuffer the output of BitcoinDarkd

./internal_setup.sh
