Pod::Spec.new do |spec|
  spec.name         = "wt-yy"
  spec.version      = "1.0.1"          # 根据实际版本修改
  spec.summary      = "yysb的 CocoaPods 封装"
  spec.description  = <<-DESC
                        yysb CocoaPods 集成。
                        DESC
  spec.homepage     = "https://github.com/ReadyDream/wt-yy"   # 替换为实际仓库地址
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "wjj" => "969615978@qq.com" }

  # 源码地址
  spec.source       = { :git => "https://github.com/ReadyDream/wt-yy.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = "13.0"   # 根据 framework 支持的最低版本调整

  # 声明预编译的 framework
  spec.vendored_frameworks = "iflyMSC.framework"

  # 需要依赖以下系统库
  spec.frameworks = "AVFoundation", "SystemConfiguration", "Foundation", "CoreTelephony", "AudioToolbox", "UIKit", "CoreLocation", "Contacts", "AddressBook", "QuartzCore", "CoreGraphics"
  spec.libraries  = "c++", "z"

# 解决模拟器 arm64 架构问题
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end