# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lib/version"

Gem::Specification.new do |s|
  s.name        = "airblade-acts-as-importable"
  s.version     = AMC::Acts::Importable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Tim Riley, Andrew Stewart']
  s.email       = ['boss@airbladesoftware.com']
  s.homepage    = ''
  s.summary     = ''
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'activerecord', '~> 3.0'

  #s.add_development_dependency '', ''
end
