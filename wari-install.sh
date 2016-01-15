#!/bin/sh

. $HOME/code/wari/wari-setup.sh

add_repo spotify 
add_repo epel
add_repo sns
add_repo sic-science
add_repo sic-backports-el7

# Some themes
add_repo arc-theme
add_repo moka
add_repo numix

add_packages_from_distro_file
 

echo "Done"
