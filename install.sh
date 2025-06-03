#!/bin/sh

echo Install rpitx - some package need internet connection -

#sudo apt-get update
#sudo apt-get install -y libsndfile1-dev git
#sudo apt-get install -y imagemagick libfftw3-dev libraspberrypi-dev
#For rtl-sdr use
#sudo apt-get install -y rtl-sdr buffer
# We use CSDR as a dsp for analogs modes thanks to HA7ILM
#git clone https://github.com/F5OEO/csdr
#cd csdr || exit
#make -j4 && sudo make -j4 install
#cd ../ || exit

cd src || exit
git clone https://github.com/F5OEO/librpitx
cd librpitx/src || exit
make -j4 && sudo make -j4 install
cd ../../ || exit

cd pift8
git clone https://github.com/F5OEO/ft8_lib
cd ft8_lib
make -j4 && sudo make -j4 install
cd ../
make -j4
cd ../

make -j4
sudo make -j4 install
cd .. || exit
