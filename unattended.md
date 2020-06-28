# turn off unattended upgrades on ubuntu 18.04+

When this happens it is because unattended is running preventing you from working with `apt-get`:

```
Reading package lists... Done
E: Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)
E: Unable to lock directory /var/lib/apt/lists/
```
Edit /etc/apt/apt.conf.d/20auto-upgrades to disable automatic updates from the command line:

`$ sudo nano /etc/apt/apt.conf.d/20auto-upgrades`

Once you have the file opened, switch off the `Update-Package-Lists` directive from 1 to 0 as shown below on Line 1:
(If necessary also switch off `Periodic::Unattended-Upgrade` directive from 1 to 0)
```
APT::Periodic::Update-Package-Lists "0";
APT::Periodic::Unattended-Upgrade "1";
```
