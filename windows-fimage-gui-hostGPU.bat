@echo off
%cd%/windows-x64/emulator -window-size 1280x800 -gpu host -no-location-ui -no-hidpi-scaling -fuchsia -kernel default/multiboot.bin -initrd init/fuchsia-ssh.zbi -m 2048 -serial stdio -vga none -device virtio-keyboard-pci -smp 4 -device virtio-mouse-pci -machine q35 -device isa-debug-exit,iobase=0xf4,iosize=0x04 -cpu host,+invtsc -net nic,macaddr=02:00:00:11:11:14,model=virtio -drive file=init/fvm_raw.blk,format=raw,if=none,id=vdisk -device virtio-blk-pci,drive=vdisk 