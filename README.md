# Install nvchad

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install packages using packer
```
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
```

# Enable WOL

enable cronie
```
sudo systemctl enable cronie
```

create cron job as root
```
sudo crontab -u root -e
```

add
```
reboot /usr/bin/sleep 20 && /usr/bin/ethtool -s interface wol g
```
