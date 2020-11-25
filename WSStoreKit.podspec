Pod::Spec.new do |s|
  s.name = "WSStoreKit"
  s.version = "8.0.0"
  s.summary = "Convenient wrapper around StoreKit."
  s.homepage = "https://github.com/whitesmith/WSStoreKit"
  s.license = 'MIT'
  s.author = { "Ricardo Pereira" => "ricardopereira@whitesmith.co" }
  s.source = { :git => "https://github.com/whitesmith/WSStoreKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/whitesmithco'
  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.swift_version = '5.3'
  s.source_files = 'Source/**/*.{h,m,swift}'
  s.module_map = 'Source/WSStoreKit.modulemap'
  s.frameworks = 'StoreKit'
end
