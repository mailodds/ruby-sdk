# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "mailodds/version"

Gem::Specification.new do |s|
  s.name        = "mailodds"
  s.version     = Mailodds::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["MailOdds"]
  s.email       = ["support@mailodds.com"]
  s.homepage    = "https://mailodds.com"
  s.summary     = "Official Ruby client for the MailOdds Email Validation API"
  s.description = "Ruby SDK for the MailOdds Email Validation API. Validate emails with format checks, domain validation, MX records, SMTP verification, and disposable email detection."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {
    "source_code_uri" => "https://github.com/mailodds/ruby-sdk",
    "documentation_uri" => "https://mailodds.com/docs",
    "homepage_uri" => "https://mailodds.com"
  }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
