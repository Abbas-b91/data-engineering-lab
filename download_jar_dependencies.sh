#!/usr/bin/env bash

set -e

#rm -rf spark/jars
#mkdir -p spark/jars

mvn dependency:copy-dependencies \
    -DoutputDirectory=spark/jars \
    -DincludeScope=runtime -f pom.xml