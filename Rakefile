#!/usr/bin/env rake
require 'bundler'
Bundler::GemHelper.install_tasks

$:.unshift 'lib'

require "rspec/core/rake_task"

desc "Run the rspec tests"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--options', 'spec/spec.opts']
end
