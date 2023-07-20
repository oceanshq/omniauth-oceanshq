require File.expand_path('lib/omniauth-oceanshq/version', __dir__)

Gem::Specification.new do |s|
  s.name          = 'omniauth-oceanshq'
  s.description   = 'OmniAuth strategy for OceansHQ'
  s.summary       = s.description
  s.homepage      = 'https://github.com/kaktusyaka/omniauth-oceanshq'
  s.version       = OmniAuth::Oceanshq::VERSION

  s.files         = Dir.glob('{lib}/**/*')
  s.require_paths = ['lib']

  s.add_dependency 'omniauth', '> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1'

  s.authors       = ['Vitaliy Shevtsov']
  s.email         = ['vitaliy.shevtsov@oceanshq.com']
end
