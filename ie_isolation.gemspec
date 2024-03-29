$LOAD_PATH.unshift 'lib'
require 'ie_isolation/version'

Gem::Specification.new do |s|
  s.name = "ie_isolation"
  s.version = IeIsolation::Version
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = "Isolate a set of views specially for IE and deprecated browsers for Ruby on Rails."
  s.homepage = "https://github.com/pmq20/ie_isolation"
  s.email = "chris@ozmm.org"
  s.authors = [ "Minqi Pan" ]

  s.files = %w( README.markdown Rakefile LICENSE HISTORY.md )
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("bin/**/*")
  s.files += Dir.glob("man/**/*")
  s.files += Dir.glob("test/**/*")
  s.files += Dir.glob("tasks/**/*")
  s.executables = [  ]

  s.extra_rdoc_files = [ "LICENSE", "README.markdown" ]
  s.rdoc_options = ["--charset=UTF-8"]

  s.add_dependency "redis-namespace", "~> 1.0.2"
  s.add_dependency "vegas", "~> 0.1.2"
  s.add_dependency "sinatra", ">= 0.9.2"
  s.add_dependency "multi_json", "~> 1.0"

  s.description = <<description
Resque is a Redis-backed Ruby library for creating background jobs,
placing those jobs on multiple queues, and processing them later.

Background jobs can be any Ruby class or module that responds to
perform. Your existing classes can easily be converted to background
jobs or you can create new classes specifically to do work. Or, you
can do both.

Resque is heavily inspired by DelayedJob (which rocks) and is
comprised of three parts:

* A Ruby library for creating, querying, and processing jobs
* A Rake task for starting a worker which processes jobs
* A Sinatra app for monitoring queues, jobs, and workers.
description
end