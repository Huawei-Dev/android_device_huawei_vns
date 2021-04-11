#!/sbin/sh

# We use this shell script because the script will follow symlinks and
# different trees will use different binaries to supply the setenforce
# tool. Before M we use toolbox, M and beyond will use toybox. The init
# binary and init.rc will not follow symlinks.

switch=$(cat /sys/class/usb_switch/switch_ctrl/manual_ctrl/switchctrl)

if [ "$switch" = "3" ]; then
	setprop led.green.on 1
elif [ "$switch" = "6" ]; then
	setprop led.green.on 1
elif [ "$switch" = "7" ]; then
	setprop led.green.on 1
else
	setprop led.green.on 0
fi
