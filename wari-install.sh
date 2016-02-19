#!/bin/sh

export WARI_ROOT=$HOME/code/wari 

. $WARI_ROOT/wari-setup.sh

add_repo spotify 
add_repo epel
add_repo sns
add_repo mantid
add_repo sic-science
add_repo sic-backports

add_repo chrome

# Some themes
add_repo arc-theme
add_repo moka
add_repo numix
add_repo paper

add_repo nvidia

add_packages_from_distro_file
 

echo "Done"
