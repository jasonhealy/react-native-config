# frozen_string_literal: true

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-config'
  s.version      = package['version']
  s.summary      = 'Expose config variables to React Native apps'
  s.author       = 'Pedro Belo'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/luggit/react-native-config'

  s.requires_arc = true
  s.platform       = :ios, '9.0'

  s.source       = { git: 'https://github.com/luggit/react-native-config', tag: "v#{s.version}" }
  # s.script_phase = { name: 'Config codegen', script: 'set -ex HOST_PATH="$SRCROOT/../node_modules" "${SRCROOT}/../node_modules/ios/ReactNativeConfig/BuildDotenvConfig.rb" "$HOST_PATH" "${SRCROOT}/../node_modules/ios/ReactNativeConfig"',
  #   execution_position: :before_compile,
  #   input_files: ['$SRCROOT/../node_modules/ios/ReactNativeConfig/BuildDotenvConfig.rb']
  # }

  s.source_files = 'ios/**/*.{h,m}'
 
  s.dependency 'React'
end
