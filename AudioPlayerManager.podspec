#
# Be sure to run `pod lib lint TestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
# minor fix from the main repository with Issue #44 resolved.

Pod::Spec.new do |s|
  s.name             = 'AudioPlayerManager'
  s.version          = File.read('VERSION')
  s.summary          = 'Small Wrapper around AVPlayer which let you play local and remote songs using a build in queue.'
  s.description      = 'AudioPlayerManager is a small audio player which takes care of the AVPlayer setup and usage. It uses an internal queue to play multiple items automatically in a row. All path based items which are supported from AVPlayer can be used (MPMediaItems and remote URLs).'
  s.homepage         = 'https://github.com/bshirley/AudioPlayerManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hans Seiffert' => 'hans.seiffert@gmail.com' }

  s.source           = { :git => 'https://github.com/bshirley/AudioPlayerManager.git', :tag => s.version.to_s }

  s.platform              = :ios
  s.ios.deployment_target = '8.0'

  s.source_files = 'AudioPlayerManager/**/*.{swift,h}'
  s.public_header_files = 'AudioPlayerManager/**/*.h'
  
  s.frameworks = 'UIKit'
  s.frameworks = 'MediaPlayer'
end
