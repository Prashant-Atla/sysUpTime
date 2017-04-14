#!/usr/bin/perl -w
use FindBin '$Bin';
while(1)
{
system("perl $Bin/cron.pl");
sleep (20);
}
