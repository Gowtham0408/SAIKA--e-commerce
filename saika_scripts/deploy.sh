#!/bin/bash

echo "Starting deployment..."

git pull origin main
mvn clean package -DskipTests

pkill -f "java -jar"

nohup java -jar target/saika-0.0.1-SNAPSHOT.jar > app.log 2>&1 &

sleep 10

ps -ef | grep java

echo "Deployment completed successfully."
