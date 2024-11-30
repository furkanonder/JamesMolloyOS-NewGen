# The New Generation of the James Molloy Operating System

This is an enhanced version of the James Molloy Operating System tutorial code, originally sourced from [James Molloy's OS Tutorial](http://www.jamesmolloy.co.uk/tutorial_html/index.html).

## Improvements

- The bootloader has been upgraded to GRUB2, offering better compatibility and support for modern systems. The `grub-mkrescue` tool is now used to create bootable ISO images.
- A script has been added to simplify the execution of the OS within QEMU for easier testing.
- The build system has been modernized using the [Meaty Skeleton](https://wiki.osdev.org/Meaty_Skeleton), offering a more flexible and efficient structure for compiling and linking the OS components.
- The assembly source files have been renamed from `.s` to `.asm` to adhere to more common naming conventions and improve readability.

## Known Bugs

James Molloy's tutorial has known bugs, which are documented [here](https://wiki.osdev.org/James_Molloy%27s_Tutorial_Known_Bugs). For a bug-free version, you can switch to the `fixed-known-bugs` branch.

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
