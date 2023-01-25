#!/bin/bash
read -p 'Enter your time zone. > '
timedatectl set-timezone "$REPLY"
