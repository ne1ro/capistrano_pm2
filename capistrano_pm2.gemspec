# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_pm2/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano_pm2'
  spec.version       = CapistranoPm2::VERSION
  spec.authors       = ['neiro']
  spec.email         = ['neiro.mail@gmail.com']
  spec.summary       = 'Capistrano integration for PM2'
  spec.description   = 'Capistrano integration and recipe for Node.js \
    process manager PM2 '
  spec.homepage      = 'https://github.com/ne1ro/capistrano_pm2'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.29.0'
end
