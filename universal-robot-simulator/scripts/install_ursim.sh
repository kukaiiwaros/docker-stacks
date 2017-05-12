#! /bin/bash
set -e

export UR_DOWNLOAD_SITE="https://s3-eu-west-1.amazonaws.com/ur-support-site/28546/ursim-3.4.1-59.tar.gz"

export URSIMVERSION="3.4.1-59"

export INSTALL_DIR=$1
export URSIM_USER=$2

# install ursim
cd $INSTALL_DIR && wget -O ursim.tar.gz ${UR_DOWNLOAD_SITE} && tar -xvzf ursim.tar.gz \
&& mv  ursim-${URSIMVERSION}  ursimpkg && cd ursimpkg \
&& sed -i "s/pkexec bash -c/bash -c/g" ./install.sh \
&& sed -i "s/apt-get -y install/aptitude -y -q -R/g" ./install.sh \
&& ./install.sh \
&& rm -f ../ursim.tar.gz \
&& cd .. && chmod -R $URSIM_USER:$URSIM_USER ursimpkg