clear
echo "Hi welcome to the install script thingy for the Twisted Space rice!"
echo "This is my first rice so it's kinda not full."
echo "anyways this script will install:"
echo ''
echo "Hyprpaper"
echo "Rofi (Wayland)"
echo 'Waybar'
echo 'Hyprlock'
echo 'Yay'
echo 'the GTK Catppuccin macchiato theme'
echo 'Papirus icon theme'
echo 'Papirus folders'
echo 'Kvantum'
echo 'Kvantum Catppuccin Theme'
echo 'Capitaine cursor theme'
echo 'Twisted Space dotfiles'
echo ''
read -p $'Press enter to continue...\n'
clear
if pacman -Qq hyprpaper &>/dev/null; then
	echo 'Hyprpaper is already installed, skipping this step.'
else
	echo 'Installing Hyprpaper...'
	sudo pacman -S hyprpaper
	clear
	echo Hyprpaper installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq waybar &>/dev/null; then
	echo 'Waybar is already installed, skipping this step.'
else
	echo 'Installing Waybar...'
	sudo pacman -S waybar
	clear
	echo Waybar installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq hyprlock &>/dev/null; then
	echo 'Hyprlock is already installed, skipping this step.'
else
	echo 'Installing Hyprlock...'
	sudo pacman -S hyprlock
	clear
	echo Waybar installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq yay &>/dev/null; then
	echo 'Yay is already installed, skipping this step.'
else
	echo 'Installing Yay (with dependencies)...'
	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	clear
	echo Yay installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq rofi-wayland &>/dev/null; then
	echo 'Rofi (Wayland) is already installed, skipping this step.'
else
	echo 'Installing Rofi (Wayland)...'
	if pacman -Qq rofi &>/dev/null; then
		echo 'Uninstaling Rofi...'
		sudo pacman -R rofi
		clear
		echo 'Rofi uninstalled!'
		read -p $'Press enter to continue...\n'
		clear
		echo 'Installing Rofi (Wayland)...'
	fi
	yay -S rofi-wayland
	clear
	echo 'Rofi (Wayland) installed!'
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq catppuccin-gtk-theme-macchiato &>/dev/null; then
	echo 'GTK Catppuccin macchiato theme is already installed, skipping this step.'
else
	echo 'Installing GTK Catppuccin macchiato theme...'
	yay -S catppuccin-gtk-theme-macchiato
	clear
	echo GTK Catppuccin macchiato theme installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq papirus-icon-theme &>/dev/null; then
	echo 'Papirus icon theme is already installed, skipping this step.'
else
	echo 'Installing Papirus icon theme...'
	yay -S papirus-icon-theme
	clear
	echo Papirus icon theme installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq papirus-folders-git &>/dev/null; then
	echo 'Papirus folders is already installed, skipping this step.'
else
	echo 'Installing Papirus folders...'
	yay -S papirus-folders-git
	clear
	echo Papirus folders installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq kvantum &>/dev/null; then
	echo 'Kvantum is already installed, skipping this step.'
else
	echo 'Installing Kvantum...'
	sudo pacman -S kvantum
	clear
	echo Kvantum installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq kvantum-theme-catppuccin-git &>/dev/null; then
	echo 'Kvantum Catppuccin theme is already installed, skipping this step.'
else
	echo 'Installing Kvantum Catppuccin theme...'
	yay -S kvantum-theme-catppuccin-git
	clear
	echo Kvantum Catppuccin theme installed!
fi
read -p $'Press enter to continue...\n'
clear
if pacman -Qq capitaine-cursors &>/dev/null; then
	echo 'Capitaine cursor theme is already installed, skipping this step.'
else
	echo 'Installing Capitaine cursor theme...'
	sudo pacman -S capitaine-cursors
	clear
	echo Capitaine cursor theme installed!
fi
read -p $'Press enter to continue...\n'
clear
echo 'Cloning the "twisted-space" repo'
git clone https://github.com/Boomyboomer123/twisted-space.git
clear
echo '"twisted-space" has been cloned!'
read -p $'Press enter to continue...\n'
clear
echo 'Copying the dotiles.'
cd twisted-space
cp -R backgrounds/. ~/backgrounds/
echo 'Copied all the backgrounds to "~/backgrounds/"'
cp -R font/. ~/.local/share/fonts/
echo 'Copied all the needed fonts (CaskaydiaCoveNerdFont) to "~/.local/share/fonts/"'
cp -R config/. ~/.config/
echo 'Copied all the config files to "~/.config/..."'
read -p $'Press enter to continue...\n'
clear
echo 'Running Papirus folders...'
papirus-folders -C violet --theme Papirus
clear
echo 'Papirus folders activated!'
read -p $'Press enter to continue...\n'
clear
read -r -p "Do you want to delete the repo folder (it was only needed for installation)? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]
then
	rm -rf ~/twisted-space/
fi
echo ''
clear
echo 'The rice has been installed succesfully!'
echo 'To lunch everything you need to be loged out.'
echo ''
read -r -p "WARNING: You will be loged out to lunch all the installed applications. Do you want to continue? I don't see a reason to select N so... [Y/y] " response
if [[ "$response" =~ ^([yY])$ ]]
then
	hyprctl dispatch exit
fi
clear
read -p $'I guess log out and back in when you want to...'
clear
read -p $'yeah... idk what to say...'
clear
read -p $'You installed the rice so...'
clear
read -p $'this script will finish in...'
clear
read -p $'3...'
clear
read -p $'2...'
clear
read -p $'1...'
clear
