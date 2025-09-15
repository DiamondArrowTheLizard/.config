#!/bin/zsh
zapret_status=$(systemctl is-active zapret)
if [ "$zapret_status" = "active" ]; then
    kitty sudo /opt/zapret/uninstall_easy.sh
fi

if [ "$zapret_status" = "inactive" ]; then
    kitty sudo /opt/zapret/install_easy.sh
fi
