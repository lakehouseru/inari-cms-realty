$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "inari/cms/realty/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "inari-cms-realty"
  s.version     = Inari::Cms::Realty::VERSION
  s.authors     = ["yuliavertiy"]
  s.email       = ["yulia.vertiy@lakehouse.ru"]
  s.homepage    = "http://lakehouse.ru"
  s.summary     = "Ruby on Rails CMS based on Administrate gem. Realty plugin"
  s.description = "http://lakehouse.ru"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"
  s.add_dependency "administrate"
  s.add_dependency "geocoder"

  s.add_development_dependency "pg"
end
