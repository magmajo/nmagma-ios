
## https://magi82.github.io/ios-regist-cocoapods/
## http://recoveryman.tistory.com/271
## https://blog.outsider.ne.kr/1132

## . lib project
pod lib create [pod name]

## . spec project
pod spec create [pod name]
pod spec lint
pod trunk register [E-MAIL] [NAME] -description=’[INFORMATION]’
pod trunk push [podSpec file name]

## . add/del tag
##   - commit
git commit -m "add cocoapods spec"

##   - add tag
git tag -a v0.0.1 -m "version 0.0.1"  -> annotated tag
git tag v0.0.1 checksum -> lightweight tag (git log)
##   - show log
git log
##   - show tag
git tag
##   - del tag
git tag -d [version-name]
git tag -d [checksum-name]