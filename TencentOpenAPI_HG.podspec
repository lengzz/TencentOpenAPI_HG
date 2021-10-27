
Pod::Spec.new do |spec|
  spec.name             = 'TencentOpenAPI_HG'
  spec.version          = '3.5.7'
  spec.summary          = 'TencentOpenAPI for cocoapods'

  spec.homepage         = 'https://github.com/lengzz'
  spec.license          =   { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'zhuangzhi.leng' => 'leng_zhuangzhi@163.com' }
  spec.source           = { :git => 'https://github.com/lengzz/TencentOpenAPI_HG.git', :tag => spec.version.to_s }
  
  spec.platform = :ios
  spec.ios.deployment_target = '7.0'
  spec.static_framework = true
  spec.requires_arc = true

  spec.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  spec.libraries = 'iconv', 'sqlite3', 'c++', 'z'

  spec.vendored_frameworks = '*.framework'
  spec.source_files = 'TencentOpenAPI.framework/Headers/*'
  spec.resource = '*.bundle'

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/TencentOpenAPI.framework/Headers/'
  }
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'

  }

end
