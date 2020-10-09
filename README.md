# magiskboot
'magiskboot' command line application on linux

# Unpack boot image
./magiskboot --unpack boot.img

# Extract ramdisk.img
mkdir ramdisk; cd ramdisk
cat ../ramdisk.cpio | cpio -i

# Create ramdisk.img
find . ! -name . | LC_ALL=C sort | cpio -o -H newc -R root:root > ../ramdisk.cpio
cd ..

# Repack boot image
./magiskboot --repack boot.img

