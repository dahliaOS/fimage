@echo off
.\windows-x64\emulator.exe -feature VirtioInput,GLDirectMem,VirtioMouse,KVM,Vulkan -window-size 1280x800 -fuchsia -kernel default/multiboot.bin -initrd init\fuchsia-ssh.zbi -drive file=init\fvm_raw.blk,format=raw -m 4096 -net nic,model=virtio -net user -serial stdio -vga none -device virtio-keyboard-pci -smp 4 -device virtio-mouse-pci -machine q35 -device isa-debug-exit,iobase=0xf4,iosize=0x04 -cpu Broadwell
