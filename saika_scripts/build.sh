#!/bin/bash

echo "Cleaning project..."
mvn clean

echo "Compiling project..."
mvn compile

echo "Running tests..."
mvn test

echo "Packaging application..."
mvn package

echo "Build completed."
