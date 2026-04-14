#!/bin/bash

echo "Enter The Service Name"

read service_name

systemctl status $service_name
