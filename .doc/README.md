Profile management with Git and GitHub
======================================

The following is a way to manage profile configuration files using GitHub.

Originally based on Silas Sewell[0] description.
[0] http://www.silassewell.com/blog/2009/03/08/profile-management-with-git-and-github/

Features
--------

* Centralized configuration management
* Files live in their native locations (no symbolic linking)
* Home directory is not a Git repo
* All the power of git with a simple alias


First time setup
----------------

> cd ~
> mkdir .homeconfig.git

> echo "alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'" >> .bashrc
> source .bashrc

> homeconfig add .bash_profile .bashrc .bash_aliases
> homeconfig commit -m 'Initial commit'

> homeconfig remote add origin git@github.com:GITHUB_USERNAME/homeconfig.git
> homeconfig push origin master

If you get an error when running config pull to the effect of You asked me to pull without... run the follow:
> echo -e '[branch "master"]\n  remote = origin\n  merge = refs/heads/master' >> ~/.homeconfig.git/config


Setup configuration on different machine
----------------------------------------

Add your public keys to GitHub (if you haven't done so already)

Switch to your home directory
> cd ~

Backup your local configuration files, example:
> mv .bash_profile .bash_profile.bk

Clone your configuration repository
> git clone git@github.com:GITHUB_USERNAME/homeconfig.git homeconfig.git

Move the git metadata to ~/.homeconfig.git
> mv homeconfig.git/.git .homeconfig.git

Enable dotglob
> shopt -s dotglob

Move your configuration files to your home directory
> mv -i homeconfig.git/* .

Delete the config.git directory
> rmdir homeconfig.git

Logout and log back in
