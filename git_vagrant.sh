REPOSITORY="vagrant"
GITHUB="url = git@github.com:sgrigorov/$REPOSITORY.git"
GITLAB="url = git@gitlab.com:sgrigorov/$REPOSITORY.git"

FILE='.git/config'

grep -qF -- "$GITLAB" "$FILE" || sed -i "/remote \"origin\"/a \	$GITLAB" "$FILE"
grep -qF -- "$GITHUB" "$FILE" || sed -i "/remote \"origin\"/a \	$GITHUB" "$FILE"

git config commit.template ~/scripts/terraform/.gitmessage
echo " My commit  message" > ~/scripts/terraform/.gitmessage
