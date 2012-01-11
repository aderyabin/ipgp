# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ipgp'
  s.authors     = ['Andrey Deryabin']
  s.email       = ['aderyabin@evilmartians.com']
  s.homepage    = 'http://github.com/aderyabin/ipgp'
  s.summary     = 'Wrapper around the ipgp.net (IP Address Lookup)'
  s.description = 'Wrapper around the ipgp.net (IP Address Lookup)'

  s.add_dependency "xml-simple", "~> 1.1.1"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.version     = Ipgp::VERSION
end
