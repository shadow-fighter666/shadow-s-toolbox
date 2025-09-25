
#!/bin/bash
function_0()
{	
	echo "======================================================================================================"
	echo "This will install all required tool "
	echo "Ip changer is getting installed"
	git clone https://github.com/SusmithKrishnan/torghost.git
	bash torghost/build.sh
	echo"ip changer is installed "
	echo "======================================================================================================"
	echo "tor browser is getting installed "
	wget https://www.torproject.org/dist/torbrowser/13.5.2/tor-browser-linux64-13.5.2_ALL.tar.xz
	abc=$(tar -xvJf tor-browser-linux64-*.tar.xz)
	echo "tor browser is installed"
	echo "======================================================================================================"
	echo "installing zphisher"
	git clone https://github.com/htr-tech/zphisher.git
	echo "zphisher is installed"
}
function_1()
{
	echo "======================================================================================================"
	echo "Your available information is "
        echo "" 
        echo "Host name ::"
        hostname
	whoami
	echo ""
	echo "Cureent ip is ::  "
        curl ifconfig.me
	echo ""
	echo "------------------------------------------------------------------------------------------------------"
	echo "Your mac address of eth0 is ::" 
	macchanger -s eth0
	
	cnt=abc
	while [[ "$cnt" != "exit" ]]
	do
	echo "======================================================================================================="
	echo "enter network interface to find its ip :: "
	iwconfig
	echo ""
	echo "(Type exit to exit and go to main menu) device name ::" 
	read cnt
	macchanger -s "$cnt"
	echo ""
	done
}
function_2()
{	echo "======================================================================================================"

        echo "Changing the ip address "
        echo "Cureent ip is ::  "
        curl ifconfig.me
        echo "" 
        sudo python3 torghost/torghost.py -s
        echo "Changerd ip is ::  "
        curl ifconfig.me

	echo "======================================================================================================"


}
function_3()
{
	echo "======================================================================================================"
	for iface in $(ls /sys/class/net/)
	do 
		echo "Interface: $iface"
		abc=$(sudo macchanger -r $iface)
		abc=$(sudo macchanger -r $iface)
		abc=$(sudo macchanger -r $iface)
    		echo "$abc"
		echo "" 
	done
	echo "======================================================================================================"
}
function_4()
{	echo "======================================================================================================="
	echo "tor wroks slow because it is using proxy chain "
	echo "tor is working slow is not an problem "
	echo "starting tor browser "
	sleep 3
	cd tor-browser && ./start-tor-browser.desktop
	echo "tor browser"
	cd ~ 
	sleep 1
}
function_5()
{
	echo "======================================================================================================"
	echo "starting zphisher "
	cd zphisher
	bash zphisher.sh 
	cd ~
}
function_6()
{	
	echo "------------------------------------------------------------------------------------------------------"
	echo "you are currently working in "
	pwd

}
function_7()
{ 
	echo "======================================================================================================="
	dir_name=home
	while [[ $dir_name != exit ]]
	do 
		echo "======================================================================================================="
		echo "available directorys is as follow "
		echo "-------------------------------------------------------------------------------------------------------"
		ls
		if [[ -z $(ls) ]];
		then
			echo "no directory found"
		fi
		echo "-------------------------------------------------------------------------------------------------------"
		echo "if you want to exit enter exit"
		echo "enter location or directory name to open :: " 
		read dir_name 
		cd $dir_name
		echo ""
	done
}	
function_8()
{	
	echo "======================================================================================================="
	echo "available users are as follow"
	users
	echo "root"
	user=abc
	echo "enter a user :: "
	read abc
	echo "-------------------------------------------------------------------------------------------------------"
	if [[ "$abc" == "root" ]];
	then 
		echo "changing to root"
	sudo su 
	else
	su $abc
	fi
	echo "======================================================================================================="

}
function_9()
{
	echo "======================================================================================================="
	echo "gaining root permission"
	sudo su 
	echo "======================================================================================================="

}
function_10()
{
	echo "======================================================================================================="
	echo "do you know current password (y/n)"
	read a
	echo "-------------------------------------------------------------------------------------------------------"
	if [["$a" == "n" ]];
	then 
		sudo passwd
	elif [[ "$a" == "y" ]];
	then 
		passwd
	else
		"enter valid option "
	fi
	echo "======================================================================================================="

}
function_11()
{
	echo "======================================================================================================="
	echo "updating your source list "
	sudo apt update
	echo "-------------------------------------------------------------------------------------------------------"
	echo "do you want to see upgradable packeges(y/n) :: "
        read ans
        if [[ "$ans" == "y" ]]; 
        then 
                apt list --upgradable
        fi
	echo "======================================================================================================="

}
function_12()
{
	echo "======================================================================================================="
	echo "upgrading your softwere and system"
	sudo apt upgred
	echo "======================================================================================================="

}
function_13()
{
	echo "======================================================================================================="
	echo "to install new tool copy tool link from github and paste here ::"
	read ans
	git clone "$ans"
	echo "======================================================================================================="
}
function_14()
{
	echo "======================================================================================================="
	echo "the available tool folders/directory are as follow "
	ls -d */ 
	echo "======================================================================================================="

}
function_15()
{
	echo "======================================================================================================="
	echo "the all available file are as follow "
	ls
	echo "======================================================================================================="

}
function_16()
{
	echo "======================================================================================================="
        echo "help section"

	echo "======================================================================================================="
 
}

function_17()
{
	echo "======================================================================================================="
	echo "do you want to shutdown/poweroff your computer/laptop ::"
	read ans
        if [[ "$ans" == "y" ]]; 
        then 
                poweroff
        fi

echo "======================================================================================================="
}
function_18()
{
	echo "======================================================================================================="
        echo "do you want to restart/reboot your computer/laptop ::"
        read ans
	echo "-------------------------------------------------------------------------------------------------------"
        if [[ "$ans" == "y" ]];
        then 
                reboot
        fi

}
function_19()
{
	echo "======================================================================================================="
	echo "exiting"
	exit

}
choice=1
while [[ "$choice" != "20" ]]
do
echo "=================================================================="
echo "                 	  SHADOW'S TOOLBOX                              "
echo "=================================================================="
echo "    ANONYMITY                        system			"
echo " 1) your info 			11) update source list		"
echo " 2) change ip address		12) update all apps		"
echo " 3) change mac address		13) download new tool		"
echo " 4) tor browser			14) list tool's folder's	"
echo " 5) zphiser			15) list all files 		"
echo "                                                              	"
echo " 	   user  			   power			"
echo " 6) current directory		16) help			"
echo " 7) change directory    		17) power off/shut down		"
echo " 8) change user			18) restart/reboot		"
echo " 9) change to root 		19) exit terminal		"
echo " 10) change password		20) exit			"
echo ""
echo "=================================================================="
echo ""
echo "if you are using this tool first tmie enter 0 "
echo ""
echo "Enter your choice (0-20) :: " 
read choice
	case $choice in
		0) 
			function_0
			;;
		1) 
                	function_1
                	;;
        	2) 
               		function_2
                	;;
        	3) 
                	function_3
                	;;
        	4) 
                	function_4
                	;;
      		5) 
                	function_5
        	        ;;
		6) 
                        function_6
                        ;;
		7) 
                        function_7
                        ;;
		8)  
                        function_8
                        ;;
		9) 
                        function_9
                        ;;
		10) 
                        function_10
                        ;;
		11) 
                        function_11
                        ;;
		12) 
                        function_12
                        ;;
		13) 
                        function_13
                        ;;
		14) 
                        function_14
                        ;;
		15) 
                        function_15
                        ;;
		16) 
                        function_16
                        ;;
		17) 
                        function_17
                        ;;
		18) 
                        function_18
                        ;;
		19) 
                        function_19
                        ;;
		20) 
                        echo "exiting the tool "
                        ;;

		*)
			echo "enter the valid number "

			;;

	esac
sleep 3
done
echo "======================================================================================================"
