qemu-img create -f raw out/disk.img 200M
mkfs.fat -n 'MIKAN OS' -s 2 -f 2 -R 32 -F 32 out/disk.img
mkdir -p mnt
sudo mount -o loop out/disk.img mnt
sudo mkdir -p mnt/EFI/BOOT
sudo cp Loader.efi mnt/EFI/BOOT/BOOTX64.EFI
sudo umount mnt