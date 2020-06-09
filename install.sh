#!/usr/bin/env bash

find pkgs -name "*.deb" -exec dpkg -i {} +
find pkgs -name "*.deb" -exec dpkg -i {} +
find wheels -name "*.whl" -exec pip install {} \;
