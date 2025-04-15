#!/usr/bin/env bash
ls *.sage | parallel --joblog logs/verify_joblog.txt -j ${1:-10} 'sage {} >| logs/{.}.txt'
