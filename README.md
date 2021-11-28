 Install nvchad

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Enable WOL

enable cronie
```sudo systemctl enable cronie```

create cron job as root
```sudo crontab -u root -e```

add
```reboot /usr/bin/sleep 20 && /usr/bin/ethtool -s interface wol g```
