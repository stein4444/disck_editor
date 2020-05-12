
#! /bin/bash


function menu(){
    exit=true
    while [[ $exit == true ]]
    do 
        echo -e "1.Show all disks\n2.Show disc space\n3.Add new partition\n4.Edit fstab\n5.Restart system\n0.Exit"
        read choice
        case $choice in
        1) clear
        ls -l /dev/sd*
        ;;
        2) clear
        echo "Show disc space:"
        sudo df -h
        ;;
        3)clear
        echo "Add new partition:"
        sudo mkfs -t ext2 /dev/sdb
        ;;
        4)clear
        echo "Edit fstab:"
        
        ;;
        5)clear
        echo "Restart system"
        sudo reboot now
        ;;
        0) exit=false
        echo "Good bye"
        ;;
        *) echo "Invalid choice"
        exit 1
        esac
    done
}


menu;
