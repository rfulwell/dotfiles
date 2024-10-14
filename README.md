# new workstation install/config
## clone this repo
```sh
git clone https://github.com/rfulwell/dotfiles.git
```
## enable sudo without a pw
```sh
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
```
## run the bootstrap script
```sh
./dotfiles/bootstrap.sh
```
## other config, TBD
