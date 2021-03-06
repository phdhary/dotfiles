# vim:foldmethod=marker
# PATHS  {{{
export PATH="$PATH":"$HOME/.local/bin"
if [ `whoami` != 'root' ] ; then
    export PATH="$PATH":"$HOME/.cargo/bin"
    export PATH="$PATH":"$HOME/go/bin"
    export PATH="$PATH":"$HOME/.pub-cache/bin"
    export PATH="$PATH":"$HOME/Android/Sdk/platform-tools"
    export PATH="$PATH":"$HOME/development/fvm/default/bin"
fi
# Flatpak App
if [ -d "/var/lib/flatpak/exports/bin" ] ; then
    PATH="/var/lib/flatpak/exports/bin:$PATH"
fi
# }}}
# ENVIRONMENT VARIABLES {{{
export EDITOR=nvim
export FREETYPE_PROPERTIES="cff:no-stem-darkening=0"
export FVM_HOME="$HOME/development/fvm"
export NEOVIDE_FRAMELESS=true
export NEOVIDE_MULTIGRID=true
export PAGER=bat
export SYSTEMD_EDITOR=nvim
# }}}
# ALIASES {{{
alias dlmp3pl='yt-dlp -f bestaudio -x --audio-format mp3 --audio-quality 320k --embed-thumbnail --add-metadata --postprocessor-args "-id3v2_version 3"'
alias g="git"
alias nimv="nvim"
alias nivm="nvim"
alias nmiv="nvim"
alias nmvi="nvim"
alias ranger=". ranger"
alias rm="rm -i"
alias svim="sudo -e"
if [[ `whoami` != "root" ]]; then
    alias dotlg="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"
fi
# }}}
# LS COLORS {{{

set_ls_color ()
{
    LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=4;34:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
    export LS_COLORS
}
# if [[ `echo $TERM` == 'xterm-kitty' ]]; then
# fi
case `echo $TERM` in
    xterm-kitty|xterm-256color) set_ls_color
        ;;
    *) echo default
        ;;
esac
# }}}
# FZF {{{
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS="-m --color=bg+:#302D41,\
bg:#1E1E2E,\
spinner:#F8BD96,\
hl:#F28FAD --color=fg:#D9E0EE,\
header:#F28FAD,\
info:#DDB6F2,\
pointer:#F8BD96 --color=marker:#F8BD96,\
fg+:#F2CDCD,\
prompt:#DDB6F2,\
hl+:#F28FAD 
--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
fi
# }}}
