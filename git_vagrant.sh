git pull git@gitlab.com:sgrigorov/vagrant.git
sed -i '/	url = git@gitlab.com:sgrigorov\/vagrant.git/a \	url = git@github.com:sgrigorov\/vagrant.git' ~/scripts/vagrant/.git/config
git config commit.template ~/scripts/vagrant/.gitmessage
echo " My commit  message" > ~/scripts/vagrant/.gitmessage