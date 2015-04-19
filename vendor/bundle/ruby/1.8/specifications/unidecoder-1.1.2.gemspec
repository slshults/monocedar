# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "unidecoder"
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Russell Norris", "Norman Clarke"]
  s.date = "2013-10-03"
  s.description = "A port of Perl's Unidecoder to Ruby. Transliterates Unicode strings to an ASCII approximation."
  s.email = ["rsl@luckysneaks.com", "norman@njclarke.com"]
  s.homepage = "http://github.com/norman/unidecoder"
  s.require_paths = ["lib"]
  s.rubyforge_project = "[none]"
  s.rubygems_version = "1.8.25"
  s.summary = "Transliterates Unicode strings to an ASCII approximation."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
