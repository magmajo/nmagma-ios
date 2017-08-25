
## https://magi82.github.io/ios-regist-cocoapods/
## http://recoveryman.tistory.com/271
## https://blog.outsider.ne.kr/1132

Pod::Spec.new do |s|
  s.name = 'Alamofire'
  s.version = '4.5.0'
  s.license = 'MIT'
  s.summary = 'Elegant HTTP Networking in Swift'
  s.homepage = 'https://github.com/Alamofire/Alamofire'
  s.social_media_url = 'http://twitter.com/AlamofireSF'
  s.authors = { 'Alamofire Software Foundation' => 'info@alamofire.org' }
  s.source = { :git => 'https://github.com/Alamofire/Alamofire.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Source/*.swift'
end

## . lib project
pod lib create [pod name]

## . spec project
pod spec create [pod name]
pod spec lint
echo "3.0" > .swift-version
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