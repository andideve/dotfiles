# Reset Settings
dconf reset -f /org/gnome/desktop/background/
dconf reset -f /org/gnome/desktop/interface/
dconf reset -f /org/gnome/desktop/wm/preferences/
dconf reset -f /com/solus-project/budgie-wm/
dconf reset -f /com/solus-project/budgie-panel/
dconf reset -f /com/solus-project/clock/
# Removing Files
sudo rm /usr/share/backgrounds/3840x2160.png
sudo rm -r /usr/share/fonts/SanFranciscoFont
sudo rm -r /usr/share/icons/Fluent
sudo rm -r /usr/share/icons/Fluent-dark
sudo rm -r /usr/share/icons/WhiteSur-cursors
sudo rm -r /usr/share/themes/Fluent-round-Dark
# Removing Packages
sudo pacman -R budgie-extras
