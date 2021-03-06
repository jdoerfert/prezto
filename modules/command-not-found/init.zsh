#
# Displays installation information for not found commands.
#
# Authors:
#   Joseph Jon Booker <joe@neoturbine.net>
#

# Load command-not-found on Debian-based distributions.
if [[ -s '/etc/zsh_command_not_found' ]]; then
  source '/etc/zsh_command_not_found'
# Load command-not-found on Arch Linux-based distributions.
elif [[ -s '/etc/profile.d/cnf.sh' ]]; then
  source '/etc/profile.d/cnf.sh'
# Return if requirements are not found.
else
  return 1
fi
