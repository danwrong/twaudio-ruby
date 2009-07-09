# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{twaudio-ruby}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Webb"]
  s.date = %q{2009-07-09}
  s.description = %q{Dirt simple API for twaud.io}
  s.email = %q{dan@danwebb.net}
  s.extra_rdoc_files = ["CHANGELOG", "lib/multipart/post.rb", "lib/twaudio.rb", "LICENSE", "README"]
  s.files = ["CHANGELOG", "lib/multipart/post.rb", "lib/twaudio.rb", "LICENSE", "Rakefile", "README", "Manifest", "twaudio-ruby.gemspec"]
  s.homepage = %q{http://github.com/danwrong/twaudio-ruby/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Twaudio-ruby", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{twaudio-ruby}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Dirt simple API for twaud.io}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
    else
      s.add_dependency(%q<mime-types>, [">= 0"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 0"])
  end
end
