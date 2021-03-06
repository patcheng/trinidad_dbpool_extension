# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{trinidad_dbpool}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Calavera"]
  s.date = %q{2011-07-02}
  s.description = %q{Addon to support database pools in Trinidad}
  s.email = %q{calavera@apache.org}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "VERSION",
    "lib/trinidad_dbpool.rb",
    "lib/trinidad_dbpool/webapp_extension.rb",
    "trinidad-libs/tomcat-dbcp.jar"
  ]
  s.homepage = %q{http://github.com/calavera/trinidad-dbpool}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.1}
  s.summary = %q{Addon to support database pools in Trinidad}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trinidad_jars>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<trinidad_jars>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<trinidad_jars>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

