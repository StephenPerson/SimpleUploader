# -*- encoding: utf-8 -*-
# stub: mina-nginx 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "mina-nginx".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["hbin".freeze, "anulman".freeze]
  s.date = "2017-01-04"
  s.description = "Configuration and managements Mina tasks for Nginx.".freeze
  s.email = ["huangbin88@foxmail.com".freeze]
  s.homepage = "https://github.com/hbin/mina-nginx.git".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Mina tasks for handle with Nginx.".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mina>.freeze, ["~> 1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 0"])
    else
      s.add_dependency(%q<mina>.freeze, ["~> 1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, ["~> 0"])
    end
  else
    s.add_dependency(%q<mina>.freeze, ["~> 1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, ["~> 0"])
  end
end
