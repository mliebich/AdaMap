# -*- encoding: utf-8 -*-
# stub: ruby-oembed 0.16.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-oembed".freeze
  s.version = "0.16.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Magnus Holm".freeze, "Alex Kessinger".freeze, "Aris Bartee".freeze, "Marcos Wright Kuhns".freeze]
  s.date = "2022-01-13"
  s.description = "An oEmbed consumer library written in Ruby, letting you easily get embeddable HTML representations of supported web pages, based on their URLs. See http://oembed.com for more information about the protocol.".freeze
  s.email = "webmaster@wrightkuhns.com".freeze
  s.extra_rdoc_files = ["CHANGELOG.rdoc".freeze, "LICENSE".freeze]
  s.files = ["CHANGELOG.rdoc".freeze, "LICENSE".freeze]
  s.homepage = "https://github.com/ruby-oembed/ruby-oembed".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze, "--title".freeze, "ruby-oembed-0.16.1".freeze, "--inline-source".freeze, "--exclude".freeze, "tasks".freeze, "CHANGELOG.rdoc".freeze]
  s.rubygems_version = "3.4.2".freeze
  s.summary = "oEmbed for Ruby".freeze

  s.installed_by_version = "3.4.2" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<xml-simple>.freeze, [">= 0"])
  s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
end
