# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "class_lister/version"

Gem::Specification.new do |s|
  s.name        = "class_lister"
  s.version     = ClassLister::VERSION
  s.authors     = ["Ben Langfeld"]
  s.email       = ["ben@langfeld.me"]
  s.homepage    = "http://github.com/benlangfeld/class_lister"
  s.summary     = %q{Lists all classes under a given module.}
  s.description = %q{Lists all classes under a given module.}

  s.rubyforge_project = "class_lister"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency %q<bundler>, ["~> 1.1"]
  s.add_development_dependency %q<rspec>, [">= 2.5.0"]
  s.add_development_dependency %q<yard>, ["~> 0.6.0"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
end
