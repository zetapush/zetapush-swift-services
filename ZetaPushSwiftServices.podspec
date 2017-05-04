#
# Be sure to run `pod lib lint ZetaPushSwiftServices.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZetaPushSwiftServices'
  s.version          = '1.0.3'
  s.summary          = 'ZetaPushSwiftServices is an auto-generated code of ZetaPush services'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ZetaPushSwiftServices is an auto-generated code of ZetaPush services.
It contains all structures needed to call ZetaPush services and for received responses
Every services can be called by a ServiceNamePublisher class
One must inherit from the ServiceNameListener class and overide the desired method
                       DESC

  s.homepage         = 'https://github.com/zetapush/zetapush-swift-services'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Morvan Mikael' => 'morvan@zetapush.com' }
  s.source           = { :git => 'https://github.com/zetapush/zetapush-swift-services.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/zetapush'

  s.ios.deployment_target = '8.0'

  s.platform     = :ios, "8.0"

  s.source_files = 'ZetaPushSwiftServices/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZetaPushSwiftServices' => ['ZetaPushSwiftServices/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency "ZetaPushSwift", "~> 1.0"
  s.dependency "Gloss", "~> 1.2"
end
