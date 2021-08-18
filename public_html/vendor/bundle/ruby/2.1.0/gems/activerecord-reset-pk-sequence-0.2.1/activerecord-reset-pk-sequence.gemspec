# -*- encoding: utf-8 -*-
require File.expand_path('../lib/activerecord-reset-pk-sequence/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Enrique Garcia Cota", "Thomas Kienlen", "Francisco Juan"]
  gem.email         = "francisco.juan@gmail.com"
  gem.description   = %q{Id of an AR table cleaner. Works for Postgres and Sqlite.}
  gem.summary       = %q{Allows resetting the id of an AR table to 0. Useful after a delete_all. Works in Postgres and Sqlite (not MySQL) for now.}
  gem.homepage      = "https://github.com/fjuan/activerecord-reset-pk-sequence"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "activerecord-reset-pk-sequence"
  gem.require_paths = ["lib"]
  gem.version       = Activerecord::Reset::Pk::Sequence::VERSION

  gem.add_development_dependency "rake", '~> 0', '> 0'
end
