# sysUpTime
This tool is used to probe the sysUpTime for many devices, up to 150. Tool can probe each device every 30 sec- onds. The Tool can handle non responsive devices, and variable communication delays. The results are to be presented on a simple web dashboard. The Tool is done in such a way that its possible to get an easy overview of all the devices. If a device has failed to respond to the last message the device should be presented using a light red color (0xFFEEEE/RGB), and for each request the device misses, the colour is made more red. If a device has failed to answer more than 30 messages, the colour is red (0xFF0000/RGB). If a device responds to a message the color is normalized to white (0xFFFFFF). On the dashboard we can completely identify the device, and the device is clickable and is done using java script, that brings up detailed information about that particular device, i.e. the device last reported uptime, number of sent requests, number of lost requests and when this information was updated (web server time). 
scaling system up time

pre-requisites
##############

properly installed and required configurations

mysql-server
apache2
snmpd
snmp
php5

the permission to the directory et2536-prat15 should be enabled

installation

The following components need to be installed. 

sudo apt-get install libdbi-perl
sudo apt-get install libpango1.0-dev 
sudo apt-get install  libxml2-dev
sudo apt-get install libsnmp-perl 
sudo apt-get install libsnmp-dev 
sudo apt-get install libnet-snmp-perl
perl -MCPAN -e 'install Net::SNMP'
	
instructions

run the script in terminal by 
perl <path to the folder>/et2536-prat15/assignement4/cron.pl

the  script runs for every 5 secounds 
after a wait time of atleat 20 to 30 secounds the values of the system uptime and lost request are been updated 

now with the help of the browser we can see the number of lost request with color notastion and the device info can be retrieved by clicking on the id, the color intensity determines the ammount of lost request the more red it is the more are the number of lost request. 

