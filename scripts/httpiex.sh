#!/bin/bash
echo "request profile: $1";
URL=$(grep $(echo $1) .requests | awk '{ print $2 }')
http $URL
