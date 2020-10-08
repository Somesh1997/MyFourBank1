cd ~/flow-dsl-backup
git config --global user.name "myFourBank_CLOUD_DEVOPS"
git config --global push.default simple
git config core.editor vim
#git commit --amend --reset-author
git add myFourBank.groovy
git commit -m "flow pov dsl backup"
git push