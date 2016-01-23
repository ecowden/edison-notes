# FAQs

### What's the difference between the "OTG" microusb port and the "Console" microusb port?

The OTG port is the _real_ USB port. You'll use it to flash the firmware.

The Console port is a serial console connection. Use it to connect to the
board's terminal with a program like
[Serial](https://www.decisivetactics.com/products/serial/). It's the equivalent
of plugging a keyboard and monitor into the board. Think of it like SSH
without a network.

### What are the serial console port's required specs?

| Property  | Value  |
| --------- | -----: |
| Baud      | 115200 |
| Data Bits | 8      |
| Stop Bits | 1      |
| Parity    | None   |

### The serial console is blank!

Yep, it doesn't spit anything out just because you connected to it. Hit
the "Enter" key.

### The serial console size is wonky!

In the Serial app, run Terminal -> Send Window Size (cmd-Y).
