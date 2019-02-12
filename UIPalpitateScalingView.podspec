Pod::Spec.new do |spec|
  spec.name         = "UIPalpitateScalingView"
  spec.version      = "1.0.1"
  spec.summary      = "A UIView that scaling like Heart Palpitate."

  spec.description  = <<-DESC
                        A UIView that scaling like Heart Palpitate.
                   DESC

  spec.homepage     = "https://github.com/kidyoungx/UIPalpitateScalingView"

  spec.license      = "MPL-2.0"

  spec.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  spec.platform     = :ios, "5.0"

  spec.source       = { :git => "https://github.com/kidyoungx/UIPalpitateScalingView.git", :tag => "#{spec.version}" }

  spec.source_files  = "UIPalpitateScalingView", "UIPalpitateScalingView/**/*.{h,m}"
  spec.exclude_files = "SampleUIPalpitateScalingView"

  spec.public_header_files = "UIPalpitateScalingView/**/*.h"

  spec.requires_arc = true

end
