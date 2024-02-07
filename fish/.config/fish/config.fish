if status is-interactive
    # Commands to run in interactive sessions can go here
end

#path variables
set PATH $PATH ~/.local/bin /opt/texlive/2023/bin/x86_64-linux/  ~/.cargo/bin  ~/.platformio/penv/bin
export FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'
export FZF_ALT_C_COMMAND='find .'
#autostart
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end


## yazi change working dir when exiting
function ya
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end


starship init fish | source
fzf_key_bindings
alias ls="exa"
alias cat="bat"
alias nv="nvim"
alias nvim="neovide"
#alias nv="nvim"
alias cf="cd ~/.config/"
alias nvconf="cd ~/.config/nvim; nvim"
alias work="cd ~/work_docs/Nakul/"
alias wmconf="cd ~/.config/hyprland/; nvim"
alias ytmp3 "yt-dlp --extract-audio --audio-format mp3 -o \"%(title)s.%(ext)s\" --embed-thumbnail --metadata-from-title \"%(artist)s - %(title)s\" $1"
