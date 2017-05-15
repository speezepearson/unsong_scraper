#!/bin/bash

sed \
    -e 's_\(<h1 id="chap[0-9]*">.*</h1>\)_<center>\1</center>_' \
    -e 's_\(<h1 id="chap[0-9]*">Chapter [0-9]*\):\(.*\)</h1>_\1</h1><h2>\2</h2>_' \
