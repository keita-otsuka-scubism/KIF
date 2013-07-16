#
# Be sure to run `pod spec lint KIF.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "mod-KIF"
  s.version      = "0.0.1"
  s.summary      = "Keep It Functional - iOS Test Framework."
  s.homepage     = "https://github.com/keita-otsuka-scubism/KIF"
  s.license      = 'Apache'
  s.author       = 'Keita Otsuka'
  s.source       = { :git => "https://github.com/keita-otsuka-scubism/KIF.git", :tag=> "0.0.1" }
  s.platform     = :ios

  # ――― MULTI-PLATFORM VALUES ――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source_files = 'Classes', 'Additions'
  s.xcconfig     = {  'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) RUN_KIF_TESTS=1' }
  s.framework = 'CoreGraphics'
  s.prefix_header_contents = '#import <CoreGraphics/CoreGraphics.h>'

end
