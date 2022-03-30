#!/bin/bash
function installing(){
	echo "Install in progress..."
	sudo cp showActiveConnection/inject-port-in-ss.py /opt/inject-port-in-ss.py && sudo chmod a+x /opt/inject-port-in-ss.py && sudo cp showActiveConnection/show-active-connections.sh /usr/bin/show-active-connections && sudo chmod a+x /usr/bin/show-active-connections && echo "Done."
}

if [ -e "/usr/bin/show-active-connections" ]
then
	if [ $# -eq 1 ]
	then
		if [ "$1" == "-f" ]
		then
			installing
		else
			echo -e "Bad args."
			exit 2
		fi
	else
		echo -e "Is installed, For Overwrite use the flag (-f)."
		exit 2
	fi

else
	installing
	exit 0
fi
