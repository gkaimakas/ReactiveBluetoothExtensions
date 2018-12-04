#
# Be sure to run `pod lib lint ReactiveBluetoothExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ReactiveBluetoothExtensions'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ReactiveBluetoothExtensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    A set of extensions that bridge the gap between `CoreBluetooth` and `ReactiveSwift`.
                       DESC

  s.homepage         = 'https://github.com/gkaimakas/ReactiveBluetoothExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'George Kaimakas' => 'gkaimakas@gmail.com' }
  s.source           = { :git => 'https://github.com/gkaimakas/ReactiveBluetoothExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'ReactiveBluetoothExtensions/Classes/**/*'
  s.dependency 'ReactiveSwift' , '~> 4.0'
  s.dependency 'ReactiveCocoa', '~> 8.0'
end
