#
# Be sure to run `pod lib lint DZQQLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DZQQLib"
  s.version          = "2.8.1"
  s.summary          = "DZQQLib qq开放平台库维护"
  s.description      = <<-DESC
                       DZQQLib qq开放平台库维护，方便在其他cocopods项目中引用
                       DESC
  s.homepage         = "https://github.com/yishuiliunian/DZQQLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "stonedong" => "yishuiliunian@gmail.com" }
  s.source           = { :git => "https://github.com/yishuiliunian/DZQQLib.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*', 'Pod/QQ/**/*.{h,m}'
  s.resource_bundles = {
     'DZQQLib' => ['Pod/Assets/*.png', 'Pod/QQ/*.bundle']
  }
  s.libraries = "z", "sqlite3"
  s.frameworks = "CoreTelephony", "CoreGraphics","SystemConfiguration"
  s.vendored_frameworks = 'Pod/QQ/**/*.{framework}'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
