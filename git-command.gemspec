# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git-command/version'

Gem::Specification.new do |gem|
  gem.name          = "git-command"
  gem.version       = Git::Command::VERSION
  gem.authors       = ["Peter Vandenberk"]
  gem.email         = ["pvandenberk@mac.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = "https://github.com/pvdb/git-command"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('methadone')
  gem.add_dependency('rugged')
  gem.add_dependency('trollop')

  # for developing
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('awesome_print')

  # for debugging
  gem.add_development_dependency('pry')
  gem.add_development_dependency('pry-debugger')
  gem.add_development_dependency('pry-stack_explorer')

  # for testing
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('cucumber')
  gem.add_development_dependency('aruba')

  # for monitoring
  gem.add_development_dependency('guard')
  gem.add_development_dependency('growl')
  gem.add_development_dependency('rb-fsevent')
  gem.add_development_dependency('rb-readline')

  # for TDD/BDD/CI
  gem.add_development_dependency('guard-rspec')
  gem.add_development_dependency('guard-cucumber')
  gem.add_development_dependency('rspec-pride')
  gem.add_development_dependency('cucumber-pride')

end
