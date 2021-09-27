Pod::Spec.new do |spec|

  spec.name         = "FoxDesignSystem"
  spec.version      = "0.0.1"
  spec.summary      = "Fox Design System Code Gen"

  spec.description  = <<-DESC
Fox Design System use a gym python script to auto generate design tokens from fonts, color, sizing and etc
                   DESC

  spec.homepage     = "https://github.com/leobmaffei/FoxDesignSystem"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Leonardo Maffei" => "leobmaffei@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/leonardo-maffei-48482a134/"

  #  When using multiple platforms
  spec.ios.deployment_target = "12.1"
  spec.osx.deployment_target  = '10.15'
  spec.swift_version = "4.2"

  spec.source       = { :git => "https://github.com/leobmaffei/FoxDesignSystem.git", :tag => "#{spec.version}" }

  spec.source_files  = "FoxDesignSystem/**/*.{h,m,swift,json,swift.gyb,gyb}"


end
