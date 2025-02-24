# Linux dev dotfiles

This is my personal dev setup on linux that includes most of my commonly used tools.

## How to use

To use this setup, you will need [chezmoi](https://www.chezmoi.io/) dotfile manager. You could
Technically use this setup even without it, but you will have to determine the file locations
yourself.

Once you have installed chezmoi, you can run the following command to apply all of these changes on your own machine.
```sh
chezmoi init --apply https://github.com/Thoogs/dotfiles.git
```

If you would like to check the changes this makes on your machine before applying, you will need to drop the `--apply` flag 
from the above command, after which you can run `chezmoi diff` to see all of the changes. Once you are happy with the changes 
chezmoi makes, you can run `chezmoi apply -v`

## What is included in this setup
This setup includes my personal configurations for following programs:

* Neovim
* Tmux
* hyprland
* kitty
* waybar
* wofi
* starship

