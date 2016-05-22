# set 256 colours in shell.
set -Ux TERM xterm-256color

# Path to Oh My Fish install.
set -gx OMF_PATH /Users/matt/.local/share/omf

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG /Users/matt/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# WORKAROUND: Tried to print invalid wide character string
set --global --export LANG en_GB.UTF-8
set --global --export LC_ALL en_GB.UTF-8

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
