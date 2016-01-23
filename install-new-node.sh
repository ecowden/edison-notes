# Install a new version of Node.js
#
# The version that of Node.js comes with the current firmware is v0.10.38,
# which feels ancient by Node.js standards. This will get binaries for a
# new version and manually install them.

NODE_VERSION=4.2.6

# uninstall the old packages, first
opkg remove nodejs
opkg remove nodejs-dev
opkg remove nodejs-npm

wget "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x86.tar.gz"
tar -xzf "node-v$NODE_VERSION-linux-x86.tar.gz"
cd "node-v$NODE_VERSION-linux-x86"
cp -r bin /usr/local/bin
cp -r bin /usr/local/lib
cp -r bin /usr/local/include
cp -r bin /usr/local/share
