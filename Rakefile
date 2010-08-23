require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rabelyoda"
    gem.summary = %Q{Rails project localization made easy}
    gem.description = %Q{A simple utility to push/pull l10n resources of a Rails project to/from the translators}
    gem.email = "andrey@subbotin.me"
    gem.homepage = "http://github.com/eploko/rabelyoda"
    gem.authors = ["Andrey Subbotin"]
    gem.files =  FileList["[A-Z][A-Z]*", "lib/**/*"]
    gem.executables = ['rabelyoda']
    gem.default_executable = ['rabelyoda']
    gem.add_dependency "plist"
    gem.add_dependency "term-ansicolor"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
