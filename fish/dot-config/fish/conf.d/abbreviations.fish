# debug
abbr --add hw 'hwinfo --short'
abbr --add psmem 'ps auxf | sort -nr -k 4'
abbr --add psmem10 'ps auxf | sort -nr -k 4 | head -10'

abbr --add fixpacman "sudo rm /var/lib/pacman/db.lck"
abbr --add jctl "journalctl -p 3 -xb" # get error messages from journalctl

# packages
abbr --add update 'sudo pacman -Syu' # update packages
abbr --add cleanup 'sudo pacman -Rns (pacman -Qtdq)' # cleanup orphaned packages
abbr --add mirror "sudo cachyos-rate-mirrors" # get fastest mirrors
# - queries
abbr --add gitpkg 'pacman -Q | grep -i "\-git" | wc -l' # count -git packages
abbr --add rip "expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # get 200 recent installed packages
abbr --add bigpkg "expac -H M '%m\t%n' | sort -h | nl" # get installed packages sorted by size in MB

# commands with default opt and args
abbr --add grubup "sudo grub-mkconfig -o /boot/grub/grub.cfg"
abbr --add tarnow 'tar -acf '
abbr --add untar 'tar -zxvf '
abbr --add wget 'wget -c '
abbr --add progcp 'rsync -ah --info=progress2'
abbr --add stow 'stow --verbose --dotfiles'
