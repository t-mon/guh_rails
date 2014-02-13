#!/bin/sh

echo "Remove the previous frontend code..."
rm -rv public/*

echo "Building the new frontend..."
cd ../hive_angular && grunt build

echo "Copying built frontend code..."
cp -vr dist/* ../hive_rails/public/
