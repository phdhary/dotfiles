# dotfiles

On fedora 36 which configure:

- Kitty Terminal
- Oh My Zsh
- Bash It
- Sway
- Swaylock
- Swaynag
- Waybar
- Vim
- Ranger
- Rofi
- Avizo
- Neovim setup script
- Some alias and env var

## How to use
- Make a git alias
```
git config --global alias.dot '!git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```
- Bare clone this repo
```
git clone --bare https://github.com/phdhary/dotfiles.git $HOME/.dotfiles
```
- Force checkout
```
git dot checkout -f
```
[Article](https://dev.to/bowmanjd/store-home-directory-config-files-dotfiles-in-git-using-bash-zsh-or-powershell-the-bare-repo-approach-35l3) I read to manage dotfiles


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.016  000.016: --- NVIM STARTING ---
000.505  000.488: locale set
000.954  000.449: inits 1
000.978  000.024: window checked
000.981  000.003: parsing arguments
004.038  003.057: expanding arguments
004.068  000.030: inits 2
004.645  000.578: init highlight
004.648  000.003: waiting for UI
005.587  000.939: done waiting for UI
005.615  000.028: init screen for UI
005.647  000.032: init default mappings
005.682  000.035: init default autocommands
006.724  000.073  000.073: sourcing /usr/share/nvim/runtime/ftplugin.vim
006.885  000.047  000.047: sourcing /usr/share/nvim/runtime/indent.vim
006.984  000.040  000.040: sourcing $VIM/sysinit.vim
017.681  010.663  010.663: sourcing /home/laken/.config/nvim/init.lua
017.696  001.191: sourcing vimrc file(s)
018.123  000.019  000.019: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-fugitive/ftdetect/fugitive.vim
018.256  000.017  000.017: sourcing /usr/share/vim/vimfiles/ftdetect/ninja.vim
018.330  000.053  000.053: sourcing /usr/share/vim/vimfiles/ftdetect/stp.vim
018.511  000.655  000.566: sourcing /usr/share/nvim/runtime/filetype.lua
018.563  000.023  000.023: sourcing /usr/share/nvim/runtime/filetype.vim
018.832  000.107  000.107: sourcing /usr/share/nvim/runtime/syntax/synload.vim
018.984  000.366  000.259: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
020.255  000.636  000.636: sourcing /usr/share/nvim/site/plugin/fzf.vim
020.666  000.021  000.021: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
020.715  000.021  000.021: sourcing /usr/share/nvim/runtime/plugin/health.vim
020.802  000.059  000.059: sourcing /usr/share/nvim/runtime/plugin/man.vim
020.844  000.017  000.017: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
021.053  000.190  000.190: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
021.102  000.023  000.023: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
021.287  000.012  000.012: sourcing /home/laken/.local/share/nvim/rplugin.vim
021.303  000.181  000.169: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
021.397  000.074  000.074: sourcing /usr/share/nvim/runtime/plugin/shada.vim
021.447  000.013  000.013: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
021.482  000.017  000.017: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
021.512  000.012  000.012: sourcing /usr/share/nvim/runtime/plugin/tohtml.vim
021.548  000.019  000.019: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
021.585  000.018  000.018: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
021.686  000.017  000.017: sourcing /usr/share/vim/vimfiles/plugin/fzf.vim
036.104  000.037  000.037: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/vim-kitty/ftdetect/kitty.vim
036.116  014.362  014.325: sourcing /home/laken/.config/nvim/plugin/packer_compiled.lua
036.460  002.040: loading rtp plugins
038.745  001.969  001.969: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/lightspeed.nvim/plugin/init.lua
039.092  000.179  000.179: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/nvim-dap/plugin/dap.lua
040.522  001.268  001.268: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-fugitive/plugin/fugitive.vim
040.870  000.015  000.015: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
041.250  000.263  000.263: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup.vim
041.465  000.102  000.102: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/perf.vim
048.868  006.093  006.093: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/plugin/nvim-treesitter.lua
052.108  010.175  004.082: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/loader.vim
052.890  000.612  000.612: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/matchparen.vim
054.142  013.439  002.271: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/plugin/matchup.vim
054.966  000.472  000.472: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-surround/plugin/surround.vim
055.214  001.427: loading packages
055.423  000.011  000.011: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/after/plugin/matchit.vim
055.501  000.276: loading after plugins
055.515  000.014: inits 3
058.064  002.549: reading ShaDa
058.512  000.097  000.097: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/ts_engine.vim
060.412  000.031  000.031: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/re.vim
060.636  002.444: opening buffers
060.671  000.035: BufEnter autocommands
060.674  000.003: editing files in windows
061.003  000.104  000.104: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/pos.vim
061.692  000.475  000.475: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/delim.vim
080.657  000.054  000.054: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons/plugin/nvim-web-devicons.vim
089.450  028.144: VimEnter autocommands
089.457  000.006: UIEnter autocommands
089.841  000.253  000.253: sourcing /usr/share/nvim/runtime/autoload/provider/clipboard.vim
089.851  000.141: before starting main loop
090.947  001.096: first screen update
090.950  000.003: --- NVIM STARTED ---


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.015  000.015: --- NVIM STARTING ---
000.511  000.496: locale set
000.976  000.465: inits 1
000.994  000.018: window checked
000.998  000.003: parsing arguments
004.114  003.117: expanding arguments
004.144  000.029: inits 2
004.728  000.584: init highlight
004.730  000.002: waiting for UI
005.711  000.981: done waiting for UI
005.744  000.032: init screen for UI
005.771  000.028: init default mappings
005.811  000.040: init default autocommands
007.021  000.079  000.079: sourcing /usr/share/nvim/runtime/ftplugin.vim
007.182  000.045  000.045: sourcing /usr/share/nvim/runtime/indent.vim
007.285  000.041  000.041: sourcing $VIM/sysinit.vim
019.426  012.107  012.107: sourcing /home/laken/.config/nvim/init.lua
019.440  001.356: sourcing vimrc file(s)
019.874  000.020  000.020: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-fugitive/ftdetect/fugitive.vim
020.015  000.018  000.018: sourcing /usr/share/vim/vimfiles/ftdetect/ninja.vim
020.060  000.024  000.024: sourcing /usr/share/vim/vimfiles/ftdetect/stp.vim
020.253  000.656  000.594: sourcing /usr/share/nvim/runtime/filetype.lua
020.307  000.023  000.023: sourcing /usr/share/nvim/runtime/filetype.vim
020.609  000.113  000.113: sourcing /usr/share/nvim/runtime/syntax/synload.vim
020.769  000.392  000.279: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
022.149  000.687  000.687: sourcing /usr/share/nvim/site/plugin/fzf.vim
022.580  000.023  000.023: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
022.621  000.016  000.016: sourcing /usr/share/nvim/runtime/plugin/health.vim
022.688  000.047  000.047: sourcing /usr/share/nvim/runtime/plugin/man.vim
022.727  000.017  000.017: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
022.925  000.178  000.178: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
022.974  000.024  000.024: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
023.169  000.014  000.014: sourcing /home/laken/.local/share/nvim/rplugin.vim
023.178  000.185  000.171: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
023.279  000.080  000.080: sourcing /usr/share/nvim/runtime/plugin/shada.vim
023.319  000.015  000.015: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
023.373  000.033  000.033: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
023.413  000.015  000.015: sourcing /usr/share/nvim/runtime/plugin/tohtml.vim
023.456  000.023  000.023: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
023.498  000.021  000.021: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
023.621  000.021  000.021: sourcing /usr/share/vim/vimfiles/plugin/fzf.vim
041.009  000.046  000.046: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/vim-kitty/ftdetect/kitty.vim
041.038  017.334  017.288: sourcing /home/laken/.config/nvim/plugin/packer_compiled.lua
041.448  002.218: loading rtp plugins
043.514  001.715  001.715: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/lightspeed.nvim/plugin/init.lua
043.791  000.115  000.115: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/nvim-dap/plugin/dap.lua
045.208  001.242  001.242: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-fugitive/plugin/fugitive.vim
045.561  000.016  000.016: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
045.956  000.272  000.272: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup.vim
046.157  000.106  000.106: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/perf.vim
053.633  006.610  006.610: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/plugin/nvim-treesitter.lua
056.882  010.322  003.712: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/loader.vim
057.634  000.590  000.590: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/matchparen.vim
058.741  013.354  002.048: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/plugin/matchup.vim
059.478  000.480  000.480: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-surround/plugin/surround.vim
059.703  001.349: loading packages
059.804  000.008  000.008: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/after/plugin/matchit.vim
059.866  000.155: loading after plugins
059.878  000.012: inits 3
062.296  002.418: reading ShaDa
062.650  000.093  000.093: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/ts_engine.vim
064.557  000.031  000.031: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/re.vim
064.778  002.358: opening buffers
064.838  000.060: BufEnter autocommands
064.841  000.003: editing files in windows
065.173  000.103  000.103: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/pos.vim
065.865  000.436  000.436: sourcing /home/laken/.local/share/nvim/site/pack/packer/start/vim-matchup/autoload/matchup/delim.vim
084.554  000.053  000.053: sourcing /home/laken/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons/plugin/nvim-web-devicons.vim
093.330  027.897: VimEnter autocommands
093.337  000.007: UIEnter autocommands
093.757  000.243  000.243: sourcing /usr/share/nvim/runtime/autoload/provider/clipboard.vim
093.766  000.186: before starting main loop
094.845  001.079: first screen update
094.849  000.003: --- NVIM STARTED ---
