if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Activate vi mode
fish_vi_key_bindings
# Export CHROME bin,executable
export CHROME_BIN="/usr/bin/chromium-browser"
export CHROME_EXECUTABLE="/usr/bin/chromium-browser"

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

# Zypper
# abbr -p anywhere zy "zypper"
