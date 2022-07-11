#!/usr/bin/fish

./git_setup.fish
cat dconf-settings.ini | dconf load /
