# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gauntlet/version"

Gem::Specification.new do |s|
  s.name        = "gauntlet"
  s.version     = Gauntlet::VERSION
  s.authors     = ["James Wickett"]
  s.email       = ["james@ruggeddevops.org"]
  s.homepage    = ""
  s.summary     = %q{the security testing tool using cucumber}
  s.description = %q{Using standard Gherkin language to define security tests, gauntlet happily wraps cucumber functionality and provides a security testing framework that security engineers, developers and operations teams can collaborate on together.}

  s.rubyforge_project = "gauntlet"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
