#!/usr/bin/env bash

mvn jar:jar install:install help:evaluate -Dexpression=project.name

NAME=`mvn -q -DforceStdout help:evaluate -Dexpression=project.name`

VERSION=`mvn -q -DforceStdout help:evaluate -Dexpression=project.version`

set -x
echo "Name: ${NAME}"
echo "Version: ${VERSION}"
java -jar target/${NAME}-${VERSION}.jar
java -jar target/my-app-1.0-SNAPSHOT.jar
