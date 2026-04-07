#if status is-interactive
    # Commands to run in interactive sessions can go here

# Add Homebrew to PATH
	set -gx PATH /usr/local/bin /opt/homebrew/bin $PATH


	export BUN_INSTALL="$HOME/.bun" 
	export PATH="$BUN_INSTALL/bin:$PATH"
	set -gx PATH /opt/gradle/gradle-8.8/bin $PATH

	set -x ANDROID_HOME /Users/vladimirantin/Library/Android/sdk
	export PATH="$ANDROID_HOME/emulator:$PATH"
	set -gx PATH $PATH $ANDROID_HOME/emulator
#end

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/vladimirantin/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
status --is-interactive; and source (rbenv init -|psub)

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
export PATH="$HOME/.local/bin:$PATH"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

