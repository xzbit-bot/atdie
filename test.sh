#!/bin/sh

yarn test:zero ; x=$?; if [ $x != 0 ]; then echo "expected 0 but got $x"; exit 1; fi
yarn test:one ; x=$?; if [ $x != 1 ]; then echo "expected 1 but got $x"; exit 1; fi
yarn test:eight ; x=$?; if [ $x != 8 ]; then echo "expected 8 but got $x?"; exit 1; fi

exit 0;
