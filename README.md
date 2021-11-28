# Install nvchad

`git clone https://github.com/NvChad/NvChad ~/.config/nvim
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync`

# Enable WOL

enable cronie
`sudo systemctl enable cronie` 

create cron job as root
`sudo crontab -u root -e`

add
`reboot /usr/bin/sleep 20 && /usr/bin/ethtool -s interface wol g`
