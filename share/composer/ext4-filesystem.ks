# Lorax Composer filesystem output kickstart template

# Firewall configuration
firewall --enabled

# NOTE: The root account is locked by default
# Network information
network  --bootproto=dhcp --onboot=on --activate
# System keyboard
keyboard --xlayouts=us --vckeymap=us
# System language
lang en_US.UTF-8
# SELinux configuration
selinux --enforcing
# Installation logging level
logging --level=info
# Shutdown after installation
shutdown
# System timezone
timezone  US/Eastern
# System bootloader configuration (unpartitioned fs image doesn't use a bootloader)
bootloader --location=none

%post
# Remove random-seed
rm /var/lib/systemd/random-seed
%end

# NOTE Do NOT add any other sections after %packages
%packages --nocore
# Packages requires to support this output format go here
policycoreutils

# NOTE lorax-composer will add the blueprint packages below here, including the final %end
