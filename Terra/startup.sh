#!/bin/bash 

echo -e "starting user data section" 

yum  update
yum install -y nginx apache
yum install -y python311

echo -e "all installs doen via template"