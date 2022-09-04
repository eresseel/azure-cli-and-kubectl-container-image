#!/bin/bash

echo -e "\e[1;33m Run test...\e[0m"

if [ -f "/usr/bin/az" ]; then
  echo -e "\e[1;32m The 'az' command is exists.\e[0m"
else
  echo -e "\e[1;31m Error: The 'az' command not found. Test is failed.\e[0m"
  exit 1
fi

if [ -f "/usr/bin/kubectl" ]; then
  echo -e "\e[1;32m The 'kubectl' command is exists.\e[0m"
else
  echo -e "\e[1;31m Error: The 'kubectl' command not found. Test is failed.\e[0m"
  exit 1
fi