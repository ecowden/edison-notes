# Intel Edison

Notes and Scripts

## Setup

### Physical Setup

I stacked the boards as follows, with standoffs between each. Screws on the
top, nuts at the bottom.

1. Intel Edison (Note the two holes for screws and standoffs)
1. Sparkfun Base Block
1. Sparkfun 9DOF Block
1. Sparkfun LED Block

### Flashing and Base Setup

I flashed with "edison-iotdk-image-280915.zip" downloaded from here (TODO hyperlink).

Disconnect Edison if connected.

Extract zip file and run `./flashall.sh`. Connect board via microusb to "OTG"
port on Sparkfun Base Block.

When it's done, give it a few extra minutes to reboot. **Eject the Edison** from
your computer (right-click -> "Eject" on the icon on the desktop). Unplug it
and plug the microusb cable into the "Console" port.

### Configuration

Connect to the Edison's console.

Set up the system with,

```
configure_edison --setup
```

This will configure device name, password and WiFi.

### System Packages

Update packages, install extra package repository, and add a few favorites
like nano and git:

```
wget https://raw.githubusercontent.com/ecowden/edison-notes/master/opkg-setup.sh -O - | sh
```

### Upgrade Node.js

The base version of Node.js as of firmware v2.1 is v0.10.38. Yikes!

Remove the old version and manually add the new version from binaries:

```
wget https://raw.githubusercontent.com/ecowden/edison-notes/master/install-new-node.sh -O - | sh
```

### SSH Key Setup

Directions [here](ssh-setup.md).

This will keep you from having to type your password in constantly not just
for SSH, but also when deploying code via rsync or other tools.
