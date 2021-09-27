Pod::Spec.new do |spec|

  spec.name         = "FoxDesignSystem"
  spec.version      = "0.0.1"
  spec.summary      = "Fox Design System use a gym python script to auto generate design tokens from fonts, color, sizing and etc"

  spec.description  = <<-DESC
Fox Design System use a gym python script to auto generate design tokens from fonts, color, sizing and etc
                   DESC

  spec.homepage     = "https://github.com/leobmaffei/FoxDesignSystem"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Leonardo Maffei" => "leobmaffei@gmail.com" }
  # Or just: spec.author    = "Leonardo Maffei"
  # spec.authors            = { "Leonardo Maffei" => "leobmaffei@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/leonardo-maffei-48482a134/"

  #  When using multiple platforms
  spec.ios.deployment_target = "12.1"
  spec.osx.deployment_target  = '10.15'
  spec.swift_version = "4.2"

  spec.source       = { :git => "https://github.com/leobmaffei/FoxDesignSystem.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "FoxDesignSystem/**/*.{h,m,swift}"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
