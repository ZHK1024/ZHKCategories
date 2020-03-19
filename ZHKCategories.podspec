#
# Be sure to run `pod lib lint ZHKCategroy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZHKCategories'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZHKCategroy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ZHK1024/ZHKCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ZHK1024' => 'ZHK1024@foxmail.com' }
  s.source           = { :git => 'https://github.com/ZHK1024/ZHKCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZHKCategories/Classes/**'
  
  # MBProgressHUD
  s.subspec 'MBPprogressHUD' do |smb|
    smb.source_files = 'ZHKCategories/Classes/MBProgressHUD/**/**'
    smb.dependency 'MBProgressHUD'
  end
  
  # UIKit
  s.subspec 'UIKit' do |suk|
    suk.source_files = 'ZHKCategories/Classes/UIKit/**/**'
  end
  
  # Foundation
  s.subspec 'Foundation' do |sf|
    sf.source_files = 'ZHKCategories/Classes/Foundation/**/**'
  end
  
  # Macro
  s.subspec 'Macro' do |sm|
    sm.source_files = 'ZHKCategories/Classes/Macros/**'
  end
  
  s.default_subspecs = 'Macro'
  
  # s.resource_bundles = {
  #   'ZHKCategories' => ['ZHKCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
