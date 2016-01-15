#!/bin/sh

if [ -f "/etc/os-release" ]; then
  . /etc/os-release
  DISTRO=$ID
  VERSION=$VERSION_ID
else 
  echo "/etc/os-release not available - your distro is too old! Upgrade! :-)"
  exit -1
fi

. $HOME/code/wari/wari-setup.sh

add_repo spotify 

exit 0

case "$DISTRO" in
fedora)
  echo "Fedora detected"
  if ! rpm -qa | grep -qw rpmfusion-free-release; then
    sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  fi
  if ! rpm -qa | grep -qw rpmfusion-nonfree-release; then
    sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  fi
  # Enable some 3rd party repos
  sudo dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-handbrake.repo
  sudo dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
  # Enable some copr repos
  sudo dnf -y copr enable sic/science 

  # Now's let's install our list of packages
  sudo dnf -y install $(cat fedora-packages.txt)
  ;;
rhel)
  echo "RHEL detected"
  if ! rpm -qa | grep -qw epel-release; then
    sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/$(rpm -E %rhel)/x86_64/epel-release-$(rpm -E %rhel)-8.noarch.rpm
  fi
  # Enable some 3rd party repos
  sudo yum-config-manager -y --add-repo=http://negativo17.org/repos/fedora-handbrake.repo
  # Enable some copr repos
  sudo yum-config-manager -y --add-repo=https://copr.fedoraproject.org/coprs/sic/science/repo/epel-7/sic-science-epel-7.repo
  sudo yum-config-manager -y --add-repo=https://copr.fedoraproject.org/coprs/sic/science/repo/epel-7/sic-backports-epel-7.repo

  # Now's let's install our list of packages
  sudo yum -y install $(cat redhat-packages.txt)
  ;;
opensuse)
  echo "OpenSUSE detected"
  ;;
ubuntu)
  echo "Ubuntu detected"
  # Add some PPAs 
  sudo add-apt-repository -y ppa:mantid/mantid
  # Now's let's install our list of packages
  sudo apt-get -y install $(cat ubuntu-packages.txt) 
  ;;
arch)
  echo "Arch detected"
  sudo pacman -S $(cat arch-packages.txt)
  ;;
*)
  echo "Unknown distro"
  ;;
esac


