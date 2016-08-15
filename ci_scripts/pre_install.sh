#!/bin/bash


go get -v github.com/Masterminds/glide
cd $GOPATH/src/github.com/Masterminds/glide && git checkout v0.11.1 && go install && cd -