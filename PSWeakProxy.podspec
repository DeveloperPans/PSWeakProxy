Pod::Spec.new do |s|

  s.name         = "PSWeakProxy"
  s.version      = "1.0.0"
  s.summary      = "A weak proxy for reslove retain cycle"
  s.description  = <<-DESC
                    A weak proxy for reslove retain cycle.
                    A weak proxy for reslove retain cycle.
                   DESC
  s.homepage     = "https://github.com/DeveloperPans/PSWeakProxy"
  s.license      = "MIT"
  s.author             = { "Pan" => "developerpans@163.com" }
  s.social_media_url = 'http://shengpan.net'
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/DeveloperPans/PSWeakProxy.git", :tag => s.version.to_s }
  s.source_files = 'PSWeakProxy/*.{h,m}'
end
