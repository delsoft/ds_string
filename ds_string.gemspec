# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ds_string/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ds_string"
  s.version     = DsString::VERSION
  s.author      =  "Nardele Salomon"
  s.email       = ["del.soft.99@gmail.com"]
  s.homepage    = "https://github.com/delsoft/ds_string/wiki/DsString"
  s.summary     = "String extensions #{DsString::VERSION}"
  s.description = "String extensions"

  s.license     = 'MIT'
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths = ["lib"]
  s.test_files = Dir["spec/**/*"]

end
