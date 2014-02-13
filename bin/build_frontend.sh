#!/bin/sh

echo "Remove the previous frontend code..."
rm -rv public/*

echo "Installing dependencies for the frontend"
cd ../hive_angular && npm install && bower install

echo "Building the new frontend..."
grunt build

echo "Copying built frontend code..."
cp -vr dist/* ../hive_rails/public/
