#!/usr/bin/env bash

while ! nc -z cassandra 9042; do sleep 3; done
kong migrations up && kong start