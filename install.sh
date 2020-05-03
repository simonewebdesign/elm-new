#!/usr/bin/env bash

# Download and unpack
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v2.0.0 > elm-new.tar.gz
tar -zxf elm-new.tar.gz

# Install
cd elm-new-2.0.0
sudo make install && echo 'elm-new installed successfully!'

# Cleanup
cd ..
rm -R elm-new-2.0.0 elm-new.tar.gz
