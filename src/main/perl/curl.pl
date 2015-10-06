#!/usr/bin/perl
system('curl -o data.csv https://docs.google.com/spreadsheets/d/1NbiOBqJZQgrZBCPNIylJsuEXD2SZpIoRFJgA9Zj7xQ4/pub?output=csv');
system('perl parse.pl data.csv');
