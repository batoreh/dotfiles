#!/bin/bash
echo "request profile: $1";
URL=$(grep $(echo $1) .requests | cut -d ' ' -f 3-)
http $URL
