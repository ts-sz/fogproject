- install patch

- copy file tftp-socket.patch
```
--- lib/common/functions.sh
+++ lib/common/functions.sh
@@ -1 +1 @@
-                cp -v /usr/lib/systemd/system/tftp.socket /etc/systemd/system/fog-tftp.socket >>$error_log 2>&1
+                cp -v /usr/lib/systemd/system/tftpd.socket /etc/systemd/system/fog-tftp.socket >>$error_log 2>&1
```


because on archlinux PATH ar ebed exposed we must to export again with command: `export PATH=$PATH:/sbin:/usr/sbin`

and start install 


how to add mount point over lxc container 
1. rsync folder /images to anotehr place ex: `rsync -arvu /images /mnt ` => be sure the images folder are smaller then place wich you dpsoooe in fodler /mnt
2. add mount point via GUI mount
3. rsync back `rsync -avu /mnt/images/ /images`
4. enjoy


hnage to auo register new guest 
- go Fog Configuration / iPXE Menu Customization / fog.reg(Quick Registration and Inventory)
- Check case:
  - Default Item
  - Be sure eth Menu Show With = Not Registred Hosts
- Save Changes



errors and typs

for errror : BdsDxe: failed to load Boot0004 "UEFI PSEx4 mac" from PCIRoot: Access Denied
> To enter bios of the VM, use F2 key on boot, then you can disable secure boot 
> also (need test) delete EFI disk and add again but without option cechcked Pre-Enroll Keys

Error > BdsDxe: failed to load Boot0002 "UEFI PXEv4 (MAX:)" from PciRoot (0x0)/

https://jhartman.pl/2021/11/08/proxmox-7-cant-boot-to-uefi-home-assistant-and-other-uefi-images/

la comande `dhcpdump -i eth0` doit retoruner le ficheir ipxe and netboot server 