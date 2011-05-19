# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "libnotify"

Gem::Specification.new do |s|
  s.name        = "libnotify"
  s.version     = Libnotify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Suschlik"]
  s.email       = ["peter-libnotify@suschlik.de"]
  s.homepage    = "http://rubygems.org/gems/libnotify"
  s.summary     = %q{Ruby bindings for libnotify using FFI}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if RUBY_PLATFORM !~ /java/ && (defined?(RUBY_ENGINE) && RUBY_ENGINE !~ /rbx/)
    s.add_runtime_dependency      'ffi',          '~> 1.0'
  end

  s.add_development_dependency  'minitest'
  s.add_development_dependency  'yard',           '~> 0.7.0'
end
