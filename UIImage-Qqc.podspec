Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "UIImage-Qqc"
  s.version      = "1.0.70"
  s.summary      = "UIImage-Qqc"
  s.homepage     = "https://github.com/xukiki/UIImage-Qqc"
  s.source       = { :git => "https://github.com/xukiki/UIImage-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["UIImage-Qqc/*.{h,m}"]

end
