# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mathcha}
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cory Wilkerson"]
  s.date = %q{2009-10-16}
  s.description = %q{Quick little arithmetic plain-text captcha}
  s.email = %q{coryjwilkerson@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "MIT-LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "install.rb",
     "lib/mathcha.rb",
     "lib/mathcha/mathcha_helper.rb",
     "lib/mathcha/mathcha_verify.rb",
     "mathcha.gemspec",
     "pkg/mathcha-0.0.0.gem",
     "pkg/mathcha-0.2.0.gem",
     "pkg/mathcha-0.4.0.gem",
     "pkg/mathcha-0.4.1.gem",
     "pkg/mathcha-0.4.2.gem",
     "pkg/mathcha-0.4.3.gem",
     "pkg/mathcha-0.4.4.gem",
     "pkg/mathcha-0.4.5.gem",
     "pkg/mathcha-0.4.6.gem",
     "pkg/mathcha-0.4.7.gem",
     "pkg/mathcha-0.5.0.gem",
     "pkg/mathcha-0.5.1.gem",
     "rails/init.rb",
     "tasks/mathcha_tasks.rake",
     "test/mathcha_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/corywilkerson/mathcha}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Quick little arithmetic plain-text captcha}
  s.test_files = [
    "test/mathcha_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<Linguistics>, [">= 1.0.5"])
    else
      s.add_dependency(%q<Linguistics>, [">= 1.0.5"])
    end
  else
    s.add_dependency(%q<Linguistics>, [">= 1.0.5"])
  end
end
