# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/iduruguay/version"

Gem::Specification.new do |s|
  s.version = Decidim::IdUruguay.version
  s.authors = ["Oliver Valls"]
  s.email = ["oliver.vh@coditramuntana.com"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/decidim/decidim-iduruguay"
  s.required_ruby_version = ">= 2.3.1"

  s.name = "decidim-iduruguay"
  s.summary = "A decidim IdUruguay module"
  s.description = "User registration, login and verification though IdUruguay"

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "omniauth_openid_connect", "~> 0.3.5"
  DECIDIM_VERSION= ">= 0.22.0"
  s.add_dependency "decidim", DECIDIM_VERSION
  s.add_dependency "decidim-core", DECIDIM_VERSION
  s.add_development_dependency "decidim-dev", DECIDIM_VERSION
end
