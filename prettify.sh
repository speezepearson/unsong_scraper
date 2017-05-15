#!/bin/bash

sed \
    -e 's_\(<h1 id="chap[0-9]*">.*</h1>\)_<center>\1</center>_' \
    -e 's_\(<h1 id="chap[0-9]*">\(Chapter\|Interlude\|Book\)[^:]*\):\(.*\)</h1>_\1</h1><h2>\3</h2>_' \
