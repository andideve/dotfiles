# Copying Files
sudo cp -r ./backgrounds /usr/share/
sudo tar -x -f ./fonts/SanFranciscoFont.tar.gz -C /usr/share/fonts/
sudo tar -x -f ./icons/01-Fluent.tar.xz -C /usr/share/icons/
sudo tar -x -f ./icons/WhiteSur-cursors.tar.gz -C /usr/share/icons/
sudo tar -x -f ./themes/Fluent-round-Dark.tar.xz -C /usr/share/themes/
# Reset Settings
dconf reset -f /org/gnome/desktop/background/
dconf reset -f /org/gnome/desktop/interface/
dconf reset -f /org/gnome/desktop/wm/preferences/
dconf reset -f /com/solus-project/budgie-wm/
dconf reset -f /com/solus-project/budgie-panel/
dconf reset -f /com/solus-project/clock/
# Configuring Background
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/3840x2160.png'
# Configuring Interface
gsettings set org.gnome.desktop.interface gtk-theme 'Fluent-round-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Fluent-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'WhiteSur-cursors'
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface document-font-name 'San Francisco Display 11'
gsettings set org.gnome.desktop.interface font-name 'San Francisco Display 11'
gsettings set org.gnome.desktop.interface show-battery-percentage true
# Configuring Gnome WM/Budgie WM
gsettings set org.gnome.desktop.wm.preferences num-workspaces 2
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'San Francisco Display Bold 11'
gsettings set com.solus-project.budgie-wm attach-modal-dialogs false
gsettings set com.solus-project.budgie-wm button-style 'left'
gsettings set com.solus-project.budgie-wm center-windows true
# Configuring Budgie Panel
sudo pacman -S budgie-extras
dconf load /com/solus-project/budgie-panel/ < budgie-panel
# Configuring Clock
dconf load /com/solus-project/clock/ < clock
