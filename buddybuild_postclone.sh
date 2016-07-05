#!/bin/sh

# $GREENHOUSE_BUILD_DIR points to the cloned repository root
cd $BUDDYBUILD_WORKSPACE
curl https://install.meteor.com/ | sh

cd src/
~/.meteor/meteor npm install
~/.meteor/meteor npm install shelljs@0.5.3 # fix for shell.js bug w/ cordova code
#~/.meteor/meteor build ../build --server=$SERVER
~/.meteor/meteor build ../build --server=http://5ef09806.ngrok.io

cd ..
