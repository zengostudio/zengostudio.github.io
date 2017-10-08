#!/bin/bash

git submodule update --init --recursive
hugo && cd public && git add --all && git commit -m Publishing ; cd .. ; git push origin master
