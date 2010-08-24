# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rabelyoda}
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrey Subbotin"]
  s.date = %q{2010-08-24}
  s.default_executable = ["rabelyoda"]
  s.description = %q{A simple utility to push/pull l10n resources of a Rails project to/from the translators}
  s.email = %q{andrey@subbotin.me}
  s.executables = ["rabelyoda"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    "CHANGELOG",
     "LICENSE",
     "README.markdown",
     "VERSION",
     "lib/rabelyoda/hash.rb"
  ]
  s.homepage = %q{http://github.com/eploko/rabelyoda}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Rails project localization made easy}
  s.test_files = [
    "test/rabelyoda/hash_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<plist>, [">= 0"])
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_runtime_dependency(%q<ya2yaml>, [">= 0"])
    else
      s.add_dependency(%q<plist>, [">= 0"])
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_dependency(%q<ya2yaml>, [">= 0"])
    end
  else
    s.add_dependency(%q<plist>, [">= 0"])
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
    s.add_dependency(%q<ya2yaml>, [">= 0"])
  end
end

