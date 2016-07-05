#!/bin/sh

# $GREENHOUSE_BUILD_DIR points to the cloned repository root
cd $BUDDYBUILD_WORKSPACE
curl https://install.meteor.com/ | sh

cd src/
~/.meteor/meteor npm install
#~/.meteor/meteor build ../build --server=$SERVER
~/.meteor/meteor build ../build --server=http://648e4bba.ngrok.io

cd ..
