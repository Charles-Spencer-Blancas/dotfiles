if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Activate vi mode
fish_vi_key_bindings
# Export CHROME bin,executable
export CHROME_BIN="/usr/bin/chromium-browser"
export CHROME_EXECUTABLE="/usr/bin/chromium-browser"

# Fishy business
set FISH_CONFIG "$HOME/.config/fish/config.fish"
set FISH_FOLDER "$HOME/.config/fish"

# Ruby Path
# export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
# export PATH="$PATH:$GEM_HOME/bin"

# JetBrains Toolbox Path (May not be needed...)
export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"

# Homeshick Fedora
source "$HOME/.homesick/repos/homeshick/homeshick.fish"

# Emacs
export PATH="$PATH:$HOME/.config/emacs/bin"

# Flutter
export PATH="$PATH:$HOME/.flutter/bin"

# PlatformIO
export PATH="$PATH:$HOME/.platformio/penv/bin"

# Pyenv
export PATH="$PATH:$HOME/.pyenv/bin"
pyenv init - | source

# Codon
export PATH="$PATH:$HOME/.codon/bin"

# Android
export ANDROID_HOME="$HOME/Android/Sdk"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Scala
export PATH="$PATH:$HOME/.local/share/coursier/bin"

# Go
export PATH="$PATH:$HOME/go/bin"

# Dotnet
export PATH="$PATH:$HOME/.dotnet/tools"
alias fsi='dotnet fsi'
alias fsharpi='dotnet fsi'

# Local
export PATH="$PATH:$HOME/.local/bin"

# ActivityWatch
export PATH="$PATH:$HOME/Applications/activitywatch"

# Add packages installed by Sdk
fish_add_path (find ~/.sdkman/candidates/*/current/bin -maxdepth 0)

# For Job Application Tracking
set resumeFolder $HOME/MEGA/Resume
set jobSearchFolder $HOME/MEGA/JobSearchSummer2023
set jobTrackCSV $HOME/MEGA/JobSearchSummer2023/JobSearchSummer2023.csv

# Abbreviations and Aliases
# Git
abbr gcm "git commit -m"
abbr gs "git status"
abbr ga "git add"
abbr gl "git log"
abbr gch "git checkout"
abbr gchb "git checkout -b"
abbr gb "git branch"
abbr gr "git reset"
abbr grh "git reset --hard"
abbr gf "git fetch"
abbr gpl "git pull"
abbr gps "git push"
abbr gd "git diff"
abbr gr1 "git reset HEAD --"
abbr grh1 "git checkout HEAD --" # Undoes all changes for 1 file (basically git reset --hard for single file)

# GCC flags
abbr gccall "gcc -Og -Wall -Wextra -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wcast-align -Wstrict-prototypes -Wwrite-strings -Waggregate-return -Wcast-qual -Wconversion -Wunreachable-code -Wformat=2 -pedantic -pedantic-errors -Wold-style-definition -std=c17"

# Zypper
# abbr -p anywhere zy "zypper"

# Emacs Client
abbr emacs "emacsclient -c -a 'emacs'"

# Bat (Better cat, with colors!!!)
abbr bat "bat --theme OneHalfLight -pp"

# Paged bat, it's more or less like more or less but colorful!
abbr pat "bat --theme OneHalfLight"

# Better ls
abbr lx "eza --icons"

# opam configuration
source /home/charles/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/charles/.ghcup/bin # ghcup-env
