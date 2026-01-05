## Useful tips

#### Razer Mouse

`sudo pacman -S openrazer-daemon && sudo gpasswd -a $USER openrazer`

The wiki mentions to add the user in the plugdev group, but the group is not used on arch

Reboot afterwards

#### Automatic login

`/etc/sddm.conf`

```shell
[Autologin]
User=alex
Session=hyprland.desktop
```

#### Install kwallet-pam

`sudo pacman -S kwallet-pam`

**edit ssdm pam file to automatically unlock wallet autostart and login**

`/etc/pam.d/sddm`

```shell
#%PAM-1.0

auth        include     system-login
-auth       optional    pam_gnome_keyring.so
-auth       optional    pam_kwallet5.so

account     include     system-login

password    include     system-login
-password   optional    pam_gnome_keyring.so    use_authtok

session     optional    pam_keyinit.so          force revoke
session     include     system-login
-session    optional    pam_gnome_keyring.so    auto_start
-session    optional    pam_kwallet5.so         auto_start
```


## Enable WOL

enable cronie
```bash
sudo systemctl enable cronie
```

create cron job as root
```bash
sudo crontab -u root -e
```

add
```bash
reboot /usr/bin/sleep 20 && /usr/bin/ethtool -s interface wol g
```
