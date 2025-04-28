Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios-https'
  s.version          = '6.0'
  s.summary          = 'FFmpeg Kit iOS Https Shared Framework'
  s.description      = 'Includes FFmpeg with gmp and gnutls libraries enabled.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :type => 'LGPL-3.0', :file => 'ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE' }
  s.author          = { 'ARTHENICA' => 'open-source@arthenica.com' }
  s.platform        = :ios, '12.1'
  s.requires_arc    = true
  
  s.libraries       = ['z', 'bz2', 'c++', 'iconv']
  
  s.source          = { :http => 'https://github.com/virtualspirit/ffmpeg-kit/releases/download/6.0/ffmpeg-kit-ios-https.zip' }
  
  s.ios.frameworks  = ['AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox']
  
  s.ios.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]
  
  s.deprecated = true
end