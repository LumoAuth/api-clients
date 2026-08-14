Pod::Spec.new do |s|
  s.name = 'LumoAuthAPIClient'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '0.1.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = 'LumoAuth'
  s.license = MIT
  s.homepage = 'https://github.com/lumoauth/api-clients'
  s.summary = 'Generated LumoAuth API client'
  s.description = 'Generated LumoAuth API client (raw HTTP client + typed models).'
  s.source_files = 'Sources/LumoAuthAPIClient/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
