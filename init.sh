#!/bin/bash

echo "Downloading cliquer"
curl https://users.aalto.fi/~pat/cliquer/cliquer-1.21.tar.gz >cliquer.tar.gz
tar -xvf cliquer.tar.gz
mv cliquer-1.21 cliquer
(
	cd cliquer
	make
)

echo "Downloading nauty"
curl http://users.cecs.anu.edu.au/~bdm/nauty/nauty27r1.tar.gz >nauty.tar.gz
tar -xvf nauty.tar.gz
mv nauty27r1 nauty
(
	cd nauty
	./configure
	make
)

echo "Downloading GLPK"
curl https://ftp.gnu.org/gnu/glpk/glpk-4.65.tar.gz >glpk.tar.gz
tar -xvf glpk.tar.gz
mv glpk-4.65 glpk
(
	cd glpk
	./configure
	make
	sudo make install
)
sudo apt-get install libgmp3-dev

rm -f *.tar.gz

