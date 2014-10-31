Installing iso image to a usb key.

install_on_usb.sh script is used to install iso image to a usb key using the iso image itself.
You can mount the iso image to a directory e.g. /tmp/iso and enter to boot folder to this directory e.g. cd /tmp/iso/boot
and execute from there the script

sudo mkdir /tmp/iso
sudo mount -o loop path_to_iso_image /tmp/iso
cd /tmp/iso/boot
sudo sh install_on_usb.sh --usb path_to_iso_image device

device can be /dev/sdb or /dev/sdc according to how many usb keys are pluged in your system.
There is no chance to install to your hard disk /dev/sda or /dev/hda. Script will exit.

So, you have to specify path to iso image and device. The script will ask user to confirm the device specified 
and it will also optionally create a persistent ext3 file.
If user did not do so then can create a persistent file using --persistent option.
There is no need to specify path to iso because Salix Live is already installed to usb key.
However, you do need to specify the architecture, because this affects the location of the persistent file.

sudo sh install_on_usb.sh --persistent 32|64 device


Typing sh install_on_usb.sh --help get the following help message

install_on_usb.sh [-h/--help] [-v/--version]
 -h, --help: this usage message
 -v, --version: the version author and licence

install_on_usb.sh --usb isoname device
install_on_usb.sh --persistent 32|64 device

-> --usb option installs syslinux on a USB key using an ISO (specify path to image and device)
-> The script will ask user to confirm the device specified
-> It will also optionally create a persistent ext3 file.

-> --persistent option creates a persistent ext3 file after installation, if user did not do so then
-> specify architecture and device
-> No need to specify path to iso because Salix Live is already installed

