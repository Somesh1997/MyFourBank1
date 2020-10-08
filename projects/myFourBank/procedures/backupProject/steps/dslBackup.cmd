if test -f ~/myFourBank.groovy ;then
 cp ~/myFourBank.groovy ~/myFourBank_$(date +%Y%m%d%h%m%s).groovy
fi
ectool generateDsl "/projects/myFourBank" > ~/myFourBank.groovy
cd ~
ls -altr myFourBank*