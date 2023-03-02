sudo pacman -S --needed git base-devel make --noconfirm
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si --noconfirm
while true
do
	read -r -p "Would you like to install pamac? [Y/n] " input

	case $input in
	    [yY][eE][sS]|[yY])
			yay -S pamac-aur --noconfirm
			break
			;;
	    [nN][oO]|[nN])
			sleep 1s
			break
	       		;;
	    *)
		echo "Its either Yes or No dumbass"
		;;
	esac
done
