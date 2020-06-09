#!/usr/bin/env bash

find packages -name "*.deb" -exec dpkg -i {} +
find wheels -name "*.whl" -exec pip install {} \;
