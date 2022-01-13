# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'implicit_rendering/version'

Gem::Specification.new do |spec|
  spec.name                  = 'implicit_rendering'
  spec.version               = ImplicitRendering::VERSION
  spec.authors               = ['Alexander Pauly']
  spec.email                 = ['alex.pauly@posteo.de']

  spec.summary               = 'Adjust default template names for Rails'
  spec.description           = 'Adjust default template names used for implicit rendering in Rails controllers'
  spec.homepage              = 'https://github.com/apauly/implicit_rendering'
  spec.license               = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'actionpack'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'zeitwerk'
  spec.add_development_dependency 'combustion'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-lcov'

end
