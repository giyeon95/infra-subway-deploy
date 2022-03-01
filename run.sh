#!/bin/sh

NAME="subway-0.0.1-SNAPSHOT.jar"
ENV=prod
PORT=8080

JAVA_OPT="-Dserver.port=$PORT -Dspring.profiles.active=$ENV"
JAVA_OPT="$JAVA_OPT -Djava.security.egd=file:/dev/./urandom"

# ps -ef | grep "$NAME" | grep -v grep | awk '{print $2}' | xargs sudo kill -9 2 > /dev/null
#if [ $? -eq 0 ];then
#  echo "$NAME Stop Success"
#else
#  echo "$NAME Not Running"
#fi
echo "$NAME Restart!"
echo $1
nohup java -jar $JAVA_OPT ./build/libs/subway-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
# nohup java -jar ./build/libs/subway-0.0.1-SNAPSHOT.jar $JAVA_OPT > /dev/null 2>&1 &
