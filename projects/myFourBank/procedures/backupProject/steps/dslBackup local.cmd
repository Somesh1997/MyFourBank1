if test -f ~/flow-dsl-backup/myFourBank.groovy ;then
 cp ~/flow-dsl-backup/myFourBank.groovy ~/flow-dsl-backup/myFourBank_$(date +%Y%m%d%h%m%s).groovy
fi
ectool generateDsl "/projects/myFourBank" > ~/flow-dsl-backup/myFourBank.groovy
cd ~/flow-dsl-backup
ls -altr myFourBank*