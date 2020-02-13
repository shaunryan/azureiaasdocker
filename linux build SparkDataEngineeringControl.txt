docker image pull ubuntu:latest
docker container run -it --name=SparkDEngCtrl_Build ubuntu:latest /bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install openjdk-8-jre-headless
apt-get -y install wget
apt-get -y install unzip
apt-get -y install zip
apt-get -y install curl
apt-get -y install git

wget -qO- "https://get.sdkman.io" | bash
exec bash
sdk install sbt 1.3.4

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH=$PATH:$HOME/miniconda/bin

conda create -y --name dbconnect python=3.7
conda init bash
exec bash
conda activate dbconnect
pip install -U databricks-connect==6.2.*
cd $HOME
git clone https://Shaun.Ryan:qygkc2ujtqxirmmw3gpbbzhoj2ivq22sf3pqg46olhk2pecxzilq@dev.azure.com/GC-DataScience/Group%20Data%20Platform/_git/SparkDataEngineeringControl
cd SparkDataEngineeringControl
sbt
compile
package
exit
cd $HOME
cp $HOME/SparkDataEngineeringControl/target/scala-2.11/gocogroup-dataenginerringcontrol_2.11-0.1.jar $HOME



