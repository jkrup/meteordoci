#!/bin/sh

# $GREENHOUSE_BUILD_DIR points to the cloned repository root
cd $GREENHOUSE_BUILD_DIR
curl https://install.meteor.com/ | sh

cd src/
~/.meteor/meteor npm install
~/.meteor/meteor npm install shelljs@0.5.3
~/.meteor/meteor build ../build --server=$SERVER

cd ..
