#!/bin/bash

echo "Automated OpenGraphiti installer 1.0 created by mrbarrett"

read -p "This script will install Open Graphiti including all required packages. Do you wish to continue? (y/n) " choice
	case "$choice" in 
		y|Y ) echo "yes";;
		n|N ) echo "goodbye"; exit 0;;
		* ) echo "goodbye"; exit 0;;
	esac
#install xcode command line tools
#xcode-select --install

#grab brew repo
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install git and wget

#brew install git

#install graphiti
#mkdir ~/Documents/OpenGraphiti
#(cd /home && 
#git clone https://github.com/opendns/dataviz.git --recursive ~/Documents/OpenGraphiti)

#install python and libs
#brew install python
#pip install networkx
#pip inststall pygeoip

#compile engine
#(cd /home && 
#	make -C ~/Documents/OpenGraphiti/graphiti)



#grab datasets

while true; do
	read -p "Do you wish to download datasets? (y/n) " choice
	case "$choice" in 
		y|Y ) echo "yes"; break;;
		n|N ) echo "thanks for installing Open Graphti!"; exit 0;;
		* ) echo "please enter y/n";;
	esac
done

#while true; do
#	read -p "Do you wish to create a custom directory for the datasets? (Default is /OpenGraphiti/Datasets) (y/n)" datasets
#	case "$datasets" in 
#		y|Y ) datasets=1; break;;
#		n|N ) echo "Using Default..."; break;;
#		* ) echo "please enter y/n";;
#	esac
#done	

#if [ $datasets = "1" ]; then
#	while true; do
#		read "enter new directory:" dataset_dir
#		"$dataset_dir" in
#			* ) echo dataset_dir "ok"; break;  
#	done
#	wget "" 

#else 
dataset_dir=~/Documents/OpenGraphiti/Datasets
mkdir ~/Documents/OpenGraphiti/Datasets
(cd /home && 
	git clone https://github.com/mrbarrett/baked-graphs.git $dataset_dir)

while true; do
	read -p "Do you wish to install the sgraph-api and miner script? WARNING: OpenDNS EMPLOYEES ONLY! (yes/no) " choice
	case "$choice" in
		y|Y ) echo "please enter your email: " email; email_set=1; break;;
		n|N ) echo "thanks for installing Open Graphiti!"; exit 0;;
		* ) echo "please enter y/n";;
	esac
done

if [ $email_set = "1" ]; then
	case "$email" in
		*@opendns.com ) break;;
		*@* ) echo "invalid email. thanks for installing Open Graphiti!"; exit 0;;
	esac
else 
	echo "thanks for installing Open Graphiti!"
	exit 0
done
		






#cd ~/workspace/dataviz/graphiti
#./graphiti demo
