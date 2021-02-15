#!/bin/bash
echo "####################################"
echo "#            Pre_Recon             #"
echo "#                                  #"
echo "#    by : Mr iamdeepakbharti       #"
echo "#                                  #"
echo "####################################"
#this section bring the menu of our tool
echo "------------------------------------------------------"
echo "Choose the type of scan                              |"
echo "[1] Nmap                                             |"
echo "[2] Gobuster                                         |"
echo "[3] Nikto                                            |"
echo "[4] Enum4linux                                       |"
echo "[5] NFS Check                                        |"
echo "[6] Davtest                                          |"
echo "------------------------------------------------------"
read type

#Nmap
if [ $type -eq 1 ]; then
    echo "----------------------"
    echo "input the target ip"
    echo "----------------------"
    read nmap_ip
 recon_1="nmap $nmap_ip"
 recon_2="nmap -sSV -p- --reason -T4 $nmap_ip"

    echo "Starting Nmap Scan............."
    echo "........Normal Nmap Scan........"
    $recon_1
    echo ".........Full Nmap Scan........."
    $recon_2
    echo ".......Done With Nmap Scan......"

#Gobuster Scan
else
    if [ "$type" -eq 2 ] ; then
        echo "---------------------"
        echo "input the target ip"
        echo "---------------------"
        read gobuster_ip
        echo "---------------------------"
        

gobuster_1="gobuster dir -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u $gobuster_ip"
gobuster_2="gobuster dir -w /usr/share/wordlists/dirb/common.txt -l -t 30 -e -k -x .html,.asp,.php -u $gobuster_ip"

        echo "..........Normal Gobuster Scan..............."
        echo "you can enter ctrl+c if you want to skip this scan"
        $gobuster_1
        echo ".............With extentions like html , php , asp........"
        $gobuster_2
        echo "----------------------------------"
        echo "Done , happy hacking"

#Nikto Scan
else
    if [ "$type" -eq 3 ] ; then
        echo "---------------------"
        echo "input the target ip"
        echo "---------------------"
        read nikto_ip
        echo "---------------------------"
        

nikto_1="nikto -h $nikto_ip -C all"

        echo "..........Nikto Scan..............."
        echo "you can enter ctrl+c if you want to skip this scan"
        $nikto_1
        echo "----------------------------------"
        echo "Done , happy hacking"

#Enum4linux Scan
else
    if [ "$type" -eq 4 ] ; then
        echo "---------------------"
        echo "input the target ip"
        echo "---------------------"
        read enum_ip
        echo "---------------------------"
        

enum_1=" Enum4linux -u $enum_ip "

        echo "..........Enum4linux Scan..............."
        echo "you can enter ctrl+c if you want to skip this scan"
        $enum_1
        echo "----------------------------------"
        echo "Done , happy hacking"

#NFS Scan
else
    if [ "$type" -eq 5 ] ; then
        echo "---------------------"
        echo "input the target ip"
        echo "---------------------"
        read nfs_ip
        echo "---------------------------"
        

enum_5=" nmap -sV --script=nfs-showmount $nfs_ip "

        echo "..........NFS Scan..............."
        echo "you can enter ctrl+c if you want to skip this scan"
        $enum_5
        echo "----------------------------------"
        echo "Done , happy hacking"        


#davtest Scan
else
    if [ "$type" -eq 6 ] ; then
        echo "---------------------"
        echo "input the target ip"
        echo "---------------------"
        read davtest_ip
        echo "---------------------------"
        

enum_6=" davtest --url $davtest_ip "

        echo "..........Davtest Scan..............."
        echo "you can enter ctrl+c if you want to skip this scan"
        $enum_6
        echo "----------------------------------"
        echo "Done , happy hacking"

fi
fi
fi
fi
fi
fi




 



