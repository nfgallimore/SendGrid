#!/usr/bin/perl
#system('curl -o data.csv https://docs.google.com/spreadsheets/d/1NbiOBqJZQgrZBCPNIylJsuEXD2SZpIoRFJgA9Zj7xQ4/pub?output=csv');
system('curl -o msg.csv https://docs.google.com/spreadsheets/d/1AWGZQ1Pvoce8Br0bo-GMw4jDjaI7z9aBRRkvtxNPEUc/pub?output=csv');
system ('curl -o subj.csv https://docs.google.com/spreadsheets/d/1Buni-WrRqkQg-Kgec0dEgKElqzjsYRzPeBx6QEINg_A/pub?output=csv');
system('perl parse.pl data.csv');
