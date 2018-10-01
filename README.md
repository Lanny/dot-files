# dot-files
Personal config files other than vim. Nothing to see here. If you're me and you were looking for the vimrc repo then you want to look [here](https://github.com/Lanny/dot-vim).

# Manual Stuff You Need To Do, Jenkins
- Install thunderbird
  - Clone grab the theme project, depending on which is newer use one of
    - `https://github.com/spymastermatt/thunderbird-monterail.git`
    - `git@github.com:Lanny/thunderbird-monterail.git`
  - Drop project in thunderbird config directory
    - OSX: `/home/[user]/Library/Thunderbird/Profiles/[random letters and numbers].default/`
    - Linux: `/home/[user]/.thunderbird/[random letters and numbers].default/`
  - Link dot-files/thunderbird/userChrome.css into the theme directory, replacing the existing file.

# ZSH
The `~/.zshrc-local` file will be sourced as part of .zshrc, if you're fucking with PATH you probably want to do it there.
