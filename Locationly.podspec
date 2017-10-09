#
# Be sure to run `pod lib lint Locationly.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Locationly'
  s.version          = '0.2.0'
  s.summary          = 'A simple class to get the current location.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Locationly -- when you just want to get the location once and be done with it, using a simple closure, no delegates.
                       DESC

  s.homepage         = 'https://github.com/davidlari/Locationly'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'davidlari' => 'david@davidlari.com' }
  s.source           = { :git => 'https://github.com/davidlari/Locationly.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/davidlari'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'Locationly' => ['Locationly/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
