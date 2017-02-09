
Pod::Spec.new do |s|

  s.name         = "ADAudioTool"
  s.version      = "1.0.0"
  s.summary      = "iOS的音频播放"

  s.description  = <<-DESC
                    iOS的音频播放
                   DESC

  s.homepage     = "https://github.com/tiancanfei/JLBAudioTool"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "安德航" => "bjwltiankong@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/tiancanfei/JLBAudioTool.git", :tag => "#{s.version}" }

  s.source_files  = "ADAudioTool/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  s.public_header_files = "ADAudioTool/*.h"

  # s.framework  = "UIKit"
  s.frameworks = "UIKit","AVFoundation"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency 'SDWebImage', '~> 3.7.6'

end
