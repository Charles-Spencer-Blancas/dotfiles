if status is-interactive
    # Commands to run in interactive sessions can go here
end

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
