#!/bin/bash

git submodule update --init --recursive
rm -rf public/
git worktree add -B master public origin/master
hugo && cd public && git add --all && git commit -m Publishing ; cd .. ; git push origin master
