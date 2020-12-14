#!/bin/bash

int=30
while(($int<=80))
do
        ./waf --run "scratch/ndn-file-simple-wifi-server --wifiRadius=$int"
        let "int+=5"
done
