#!/bin/bash

cp -r /project/answer/* /project/target/
cd /project/target

phpunit $@