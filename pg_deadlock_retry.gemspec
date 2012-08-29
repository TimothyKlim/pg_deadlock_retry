# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

require "pg_deadlock_retry/version"

Gem::Specification.new do |s|
  s.name = %q{pg_deadlock_retry}
  s.version = PGDeadlockRetry::VERSION
  s.authors = ["Jamis Buck", "Mike Perham", "Timothy Klim"]
  s.description = s.summary = %q{Provides automatic deadlock retry and logging functionality for ActiveRecord and PostgreSQL}
  s.email = %q{klimtimothy@gmail.com}
  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = %q{http://github.com/TimothyKlim/pg_deadlock_retry}
  s.require_paths = ["lib"]
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'activerecord', ENV['ACTIVERECORD_VERSION'] || ' ~>3.0'
end
