# Upgrade all default packages first. These are the "important" ones.
# Upgrading after adding the additional repos below is slow and unnecessary.
opkg update
opkg upgrade

# Add additional opkg repositories so we can get packages like nano and git
echo "src all http://iotdk.intel.com/repos/2.0/iotdk/all" >> /etc/opkg/base-feeds.conf
# echo "src x86 http://iotdk.intel.com/repos/2.0/iotdk/x86" >> /etc/opkg/base-feeds.conf
# echo "src i586 http://iotdk.intel.com/repos/2.0/iotdk/i586" >> /etc/opkg/base-feeds.conf
echo "src core2-32 http://iotdk.intel.com/repos/2.0/iotdk/core2-32" >> /etc/opkg/base-feeds.conf

# update to get info about new packages
opkg update

# install a few favorites
opkg install nano
opkg install git
