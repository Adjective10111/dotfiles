function l. --wraps="eza -a | grep -e '^\\.'" --description "alias l. eza -a | grep -e '^\\.'"
    eza -a $argv | grep -e '^\.'
end
