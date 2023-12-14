<<<<<<< HEAD
REPOSITORY="vagrant"
GITHUB="url = git@github.com:sgrigorov/$REPOSITORY.git"
GITLAB="url = git@gitlab.com:sgrigorov/$REPOSITORY.git"

FILE='.git/config'

grep -qF -- "$GITLAB" "$FILE" || sed -i "/remote \"origin\"/a \	$GITLAB" "$FILE"
grep -qF -- "$GITHUB" "$FILE" || sed -i "/remote \"origin\"/a \	$GITHUB" "$FILE"

git config commit.template ~/scripts/terraform/.gitmessage
echo " My commit  message" > ~/scripts/terraform/.gitmessage
=======
git pull git@gitlab.com:sgrigorov/vagrant.git
sed -i '/	url = git@gitlab.com:sgrigorov\/vagrant.git/a \	url = git@github.com:sgrigorov\/vagrant.git' ~/scripts/vagrant/.git/config
git config commit.template ~/scripts/vagrant/.gitmessage
echo " My commit  message" > ~/scripts/vagrant/.gitmessage
>>>>>>> 754994f08e9e2391bfbfc51e4d3e5a5f9f4c033a
