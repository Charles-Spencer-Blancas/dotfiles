if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set Ruby path for Arch
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Abbreviations
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
