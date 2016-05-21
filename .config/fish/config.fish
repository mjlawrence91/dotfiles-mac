# Set path to Z script.
set -g Z_SCRIPT_PATH /usr/local/Cellar/z/1.9/etc/profile.d/z.sh

# Path to Oh My Fish install.
set -gx OMF_PATH /Users/matt/.local/share/omf

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG /Users/matt/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# WORKAROUND: Tried to print invalid wide character string
set --global --export LANG en_GB.UTF-8
set --global --export LC_ALL en_GB.UTF-8

# Load z into shell
source /Users/matt/.config/z-fish/z.fish
source /Users/matt/.config/z-fish/z_complete.fish

# My defined aliases
source /Users/matt/.config/fish/aliases.fish

# Theme settings
set -g theme_display_git_ahead_verbose yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_title_display_process yes
set -g theme_avoid_ambiguous_glyphs yes
set -g default_user your_normal_user

# Configure greeting
function fish_greeting
  set_color $fish_color_autosuggestion[1]
  uname -nsr
  uptime
  set_color normal
end