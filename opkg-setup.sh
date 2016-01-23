# Set up system packages the way I like 'em.
#
# This will also add more of Intel's package registries so that more packages
# are commonly available.

# Upgrade all default packages first. These are the "important" ones, like
# mraa and upm.
#
# Upgrading after adding the additional repos below is slow and unnecessary.
opkg update
opkg upgrade

# Add additional opkg repositories so we can get packages like nano and git.
#
# I find that I only ever want stuff from the core2-32 repo, so I've commented
# out the others to keep things lean.

# echo "src all http://iotdk.intel.com/repos/2.0/iotdk/all" >> /etc/opkg/base-feeds.conf
# echo "src x86 http://iotdk.intel.com/repos/2.0/iotdk/x86" >> /etc/opkg/base-feeds.conf
# echo "src i586 http://iotdk.intel.com/repos/2.0/iotdk/i586" >> /etc/opkg/base-feeds.conf
echo "src core2-32 http://iotdk.intel.com/repos/2.0/iotdk/core2-32" >> /etc/opkg/base-feeds.conf

# extra third-party packages, like rsync
echo "src/gz alext-core2-32 http://repo.opkg.net/edison/repo/core2-32" >> /etc/opkg/base-feeds.conf

# update to get info about new packages
opkg update

# install a few favorites
opkg install nano
opkg install git
opkg install rsync
