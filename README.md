# Bluepill libopencm3 Examples

Forked from a project that provided a libopencm3 USB CDC bluepill example

* Bluepill USB serial device

---

Boilerplate for using a libopencm3 project STM32F1 Bluepill board using a blackmagic probe.


    $ make <project>
    $ arm-none-eabi-gdb <project>/program.elf
    (gdb) target extended-remote <port>
    (gdb) monitor swdp_scan
    (gdb) attach 1
    (gdb) load
    (gdb) run
