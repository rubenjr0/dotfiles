#!/bin/bash

RIO_CONF="$HOME/.config/rio/config"
KITTY_CONF="$HOME/.config/kitty"
HELIX_CONF="$HOME/.config/helix/config"
ZELLIJ_CONF="$HOME/.config/zellij/config"
ZATHURA_CONF="$HOME/.config/zathura"

set_theme() {
  echo "Setting Rio..."
  cp "${RIO_CONF}.$1.toml" "${RIO_CONF}.toml"

  echo "Setting Kitty..."
  cp "${KITTY_CONF}/themes/$1.conf" "${KITTY_CONF}/colors.conf"
  
  echo "Setting Helix..."
  cp "${HELIX_CONF}.$1.toml" "${HELIX_CONF}.toml"

  echo "Setting Zathura..."
  cp "${ZATHURA_CONF}/${1}rc" "${ZATHURA_CONF}/zathurarc"
  
  echo "Setting Zellij..."
  cp "${ZELLIJ_CONF}.$1.kdl" "${ZELLIJ_CONF}.kdl"
}

set_dark_theme() {
    set_theme "dark"
}

set_light_theme() {
    set_theme "light"
}

if [ $# -eq 0 ]; then
  echo "No arguments provided. Please use -d or -l."
  exit 1
fi

if [ "$1" == "-d" ]; then
  set_dark_theme
elif [ "$1" == "-l" ]; then
  set_light_theme
else
  echo "Invalid option: $1" >&2
  exit 1
fi
