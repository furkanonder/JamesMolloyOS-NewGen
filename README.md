# The New Generation of the James Molloy Operating System

This is an enhanced version of the James Molloy Operating System tutorial code, originally sourced from [James Molloy's OS Tutorial](http://www.jamesmolloy.co.uk/tutorial_html/index.html).

## Improvements

- The bootloader has been upgraded to GRUB2, offering better compatibility and support for modern systems. The `grub-mkrescue` tool is now used to create bootable ISO images.
- A script has been added to simplify the execution of the OS within QEMU for easier testing.
- The build system has been modernized using the [Meaty Skeleton](https://wiki.osdev.org/Meaty_Skeleton), offering a more flexible and efficient structure for compiling and linking the OS components.
- The assembly source files have been renamed from `.s` to `.asm` to adhere to more common naming conventions and improve readability.

## Fixed Known Bugs

James Molloy's tutorial has known bugs, which are documented [here](https://wiki.osdev.org/James_Molloy%27s_Tutorial_Known_Bugs).

- [ ] Problem: `Not using a cross-compiler`
- [ ] Problem: `__cdecl calling convention`
- [X] Problem: `CFLAGS`
- [X] Problem: `Not using libgcc`
- [ ] Problem: `Not setting a stack`
- [ ] Problem: `main function`
- [X] Problem: `Data types`
- [ ] Problem: `Inline Assembly`
- [X] Problem: `Missing functions`
- [ ] Problem: `Interrupt handlers corrupt interrupted state`
- [ ] Problem: `ISR 17 and 21 have error codes`
- [ ] Problem: `struct registers::esp is useless`
- [ ] Problem: `__attribute__((packed))`
- [ ] Problem: `cli and sti in interrupt handlers`
- [ ] Problem: `kmalloc isn't properly aligned`
- [ ] Problem: `Paging Code`
- [X] Problem: `Heap Code`
- [ ] Problem: `VFS Code`
- [ ] Problem: `multiboot.h`
- [ ] Problem: `Multitasking`
- [ ] Problem: `User mode`
    - [ ] Problem 1: `nasm byte keyword causing 0x80 to become 0xffffff80`
    - [ ] Problem 2: `Don't forget to allow interrupts in user mode in idt_set_gate`
    - [ ] Problem 3: `regs var must called by reference instead of by value in the irq and isr handlers`
    - [ ] Problem 4: `Missing documentation around set_kernel_stack`
    - [ ] Problem 5: `find_smallest_hole() bug in heap code causing fork() to page fault`

## Setup & Usage

### Prerequisites

Before building and running the OS, make sure you have the following tools installed:
- **GRUB**
- **NASM**
- **QEMU**
- **Make**
- **i686-cross-compiler**

### Building the OS

To build the OS, simply run the following command:

```bash
./build.sh
```

### Running the OS

With QEMU:
```sh
./qemu.sh
```

With Bochs:
```sh
./bochs.sh
```
