!#/bin/sh

git pull origin giyeon95-performance &&
./gradlew clean build --exclude-task test &&
./run.sh
