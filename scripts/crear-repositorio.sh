#!/bin/bash

dpkg-scanpackages dists/lucid/ci/binary-i386 /dev/null | gzip -9c > /var/www/archives/dists/lucid/ci/binary-i386/Packages.gz
