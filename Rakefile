# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'
require 'bundler'
Bundler.require(:RubyMotion)

Motion::Project::App.setup do |app|
  app.name = 'MyFavoriteBud'
  app.device_family = [:iphone] # :ipad,
  app.interface_orientations = [:portrait, :landscape_right, :landscape_left]
  app.identifier = 'MyFavoriteBud'

  app.deployment_target = "6.0"

  app.info_plist['CFBundleShortVersionString'] = "1.0.0"
  app.short_version = "1.0"
  app.version       = "1.0"
  {
    'DTSDKName'         => 'iphoneos6.0',
    'DTPlatformVersion' => '6.0',
    'DTXcode'           => '0450',
    'DTSDKBuild'        => '10A403',
    'DTXcodeBuild'      => '4G182',
    'DTPlatformBuild'   => '10A403'
  }.each do |k, v|
    app.info_plist[k] = v
  end

  app.libs << "-lsqlite3"

  app.frameworks += [
    'Accounts',
    'Social',
    'AdSupport',
    'AudioToolbox',
    'CFNetwork',
    'SystemConfiguration',
    'MobileCoreServices',
    'Security',
    'QuartzCore',
  'StoreKit']

  # app.provisioning_profile = "/Users/jsilverman2/Library/MobileDevice/Provisioning Profiles/60F7EEB6-6E11-4713-9039-839CDBB930D4.mobileprovision"
  # app.codesign_certificate = "iPhone Distribution: Jonathan Silverman"

  # app.icons = ['icon_iphone.png', 'icon_ipad.png', 'icon_iphone_retina.png', 'icon_ipad_retina.png']
  app.prerendered_icon = true

  app.vendor_project('vendor/FacebookSDK.framework', :static, :products => ['FacebookSDK'], :headers_dir => 'Headers')

  app.vendor_project('vendor/Parse.framework', :static, :products => ['Parse'], :headers_dir => 'Headers')

  # app.frameworks += []

end
