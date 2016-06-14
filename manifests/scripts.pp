# make git use kwallet
## git config --global core.askpass /usr/bin/ksshaskpass

###################################################
# ssh and github:
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
###################################################
# make sure .ssh exists with the right user chmod...
# http://superuser.com/questions/215504/permissions-on-private-key-in-ssh-folder
# private key: 600
# public key: 644
# ssh folder: 700

# Creates a new ssh key, using the provided email as a label
## ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

## start the ssh-agent in the background (make sure it is running)
# eval "$(ssh-agent -s)"

## add the key to the agent
# ssh-add ~/.ssh/id_rsa

puppet module install puppetlabs-vcsrepo
