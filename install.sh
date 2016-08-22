#!/bin/bash

# Download and unpack
curl https://codeload.github.com/simonewebdesign/elm-new/tar.gz/v1.1.1 > elm-new.tar.gz
tar -zxf elm-new.tar.gz

# Install
cd elm-new-1.1.1
sudo make install && echo 'elm-new installed successfully!'

# Cleanup
cd ..
rm -R elm-new-1.1.1 elm-new.tar.gz