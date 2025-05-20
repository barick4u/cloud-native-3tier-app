#!/bin/bash
apt update -y
apt install -y docker.io docker-compose python3-pip nginx unzip
usermod -aG docker ubuntu
