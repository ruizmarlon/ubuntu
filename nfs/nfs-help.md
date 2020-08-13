
## to unmount share (need to root)
```
sudo umount -f -l /mnt
```
## From digital ocean

https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04

<need to figure out why things don't mount with write permissions>
```
sudo chown nobody:nogroup /var/nfs/general
```
