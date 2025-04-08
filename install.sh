clear
echo "Hi welcome to the install script thingy for the Twisted Space rice!"
echo "This is my first rice so it's kinda not full."
echo "anyways this script will install:"
echo ''
echo "Hyprpaper"
echo "Rofi"
echo 'Waybar'
echo 'Yay'
echo 'the GTK Catppuccin mocha theme'
echo 'Kvantum'
echo 'Kvantum Catppuccin Theme'
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
if pacman -Qq rofi &>/dev/null; then
	echo 'Rofi is already installed, skipping this step.'
else
	echo 'Installing Rofi...'
	sudo pacman -S rofi
	clear
	echo Rofi installed!
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
if pacman -Qq catppuccin-gtk-theme-mocha &>/dev/null; then
	echo 'GTK Catppuccin mocha theme is already installed, skipping this step.'
else
	echo 'Installing GTK Catppuccin mocha theme...'
	yay -S catppuccin-gtk-theme-mocha
	clear
	echo GTK Catppuccin mocha theme installed!
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
echo 'Cloning the "twisted-space" repo'
git clone https://github.com/Boomyboomer123/twisted-space.git
clear
echo '"twisted-space" has been cloned!'
read -p $'Press enter to continue...\n'
clear
echo 'Copying the dotiles.'
read -p $'Press enter to continue...\n'
clear
cd twisted-space
cp -R hypr/. ~/.config/hypr/
echo 'Copied "hyprland.conf" and "hyprpaper.conf" to "~/.config/hypr/"'
cp -R backgrounds/. ~/backgrounds/
echo 'Copied all the backgrounds to "~/backgrounds/"'
cp -R kitty/. ~/.config/kitty/
echo 'Copied "kitty.conf" to "~/.config/kitty/"'
cp -R waybar/. ~/.config/waybar
echo 'Copied "config.jsonc" and "style.css "to "~/.config/waybar"'
cp -R rofi/. ~/.config/rofi/
chmod +x ~/.config/rofi/powermenu.sh
echo 'Copied "luncher-theme.rasi", "powermenu-theme.rasi" and "powermenu.sh" to "~/.config/rofi/"'
cp -R gtk/. ~/.config/gtk-3.0/
echo 'Copied "settings.ini" to "~/.config/gtk-3.0/"'
cp -R kvantum/. ~/.config/Kvantum/
echo 'Copied "kvantum.kvconfig" to "~/.config/Kvantum/"'
cp -R dolphin/. ~/.config/
echo 'Copied "dolphinrc" to "~/.config/"'
cp -R font/. ~/.local/share/fonts/
echo 'Copied all the needed fonts (CaskaydiaCoveNerdFont) to "~/.local/share/fonts/"'
read -p $'Press enter to continue...\n'
clear
read -r -p "Do you want to delete the repo folder (it was only needed for installation)? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]
then
	rm -rf ~/twisted-space/
fi
echo 'The Twisted Space rice has been installed succesfully!'
echo 'You will be logedout to activate all the aplications.'
read -p $'Press enter to continue...\n'
hyprctl dispatch exit
