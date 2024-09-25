#! /bin/bash

# starship config
if [ ! -d ./.config ]; then
    mkdir ./.config
fi
cp ~/.config/starship.toml ./.config/starship.toml

# fish config
if [ ! -d ./.config/fish ]; then
    mkdir -p ./.config/fish
fi
cp ~/.config/fish/config.fish ./.config/fish/config.fish

# git config
cp ~/.gitconfig ./.gitconfig

# zellij config
if [ ! -d ./.config/zellij ]; then
    mkdir -p ./.config/zellij
fi
cp ~/.config/zellij/config.kdl ./.config/zellij/config.kdl
