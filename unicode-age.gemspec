# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/unicode/age/version"

Gem::Specification.new do |gem|
  gem.name          = "unicode-age"
  gem.version       = Unicode::Age::VERSION
  gem.summary       = "Determine required Unicode version of a string."
  gem.description   = "[Unicode #{Unicode::Age::UNICODE_VERSION}] A micromodule to detect which Unicode version is required to display a string."
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/unicode-age"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.required_ruby_version = ">= 2.0", "< 4.0"
end
