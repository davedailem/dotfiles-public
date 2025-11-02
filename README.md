# First time/new machine setup

``` shell

brew install chezmoi
chezmoi init git@github.com:davedailem/dotfiles.git

chezmoi cd
git push --set-upstream origin main
exit 

chezmoi diff
chezmoi apply
```

# Basic workflow 
The basic workflow is to edit your dotfiles locally, then run `chezmoi add
<file-or-directory>`. This command adds or updates the file in the chezmoi source
directory. If auto-commit is not enabled, you'll need to manually commit your
changes to the repository:

``` shell
chezmoi cd 
git add -A
git commit -m 'commit message'
git push --set-upstream origin main
```

# Enable auto commit 
Note: chezmoi should copy `.chezmoi.toml.tmpl` to `~/.config/chezmoi/chezmoi.toml`
after the `chezmoi init` command.

Create `~/.config/chezmoi/chezmoi.toml` and add the following:
``` shell
[git]
    autoCommit = true
    autoPush = true
```

