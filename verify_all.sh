#!/usr/bin/env bash
ls *.m | parallel --joblog logs/magma_verify_joblog.txt -j ${1:-10} 'magma -n {} >| logs/{.}.txt'
ls *.sage | parallel --joblog logs/sage_verify_joblog.txt -j ${1:-10} 'sage {} >| logs/{.}.txt'
