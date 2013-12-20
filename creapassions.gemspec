$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "creapassions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "creapassions"
  s.version     = Creapassions::VERSION
  s.authors     = ["Emilie"]
  s.email       = ["emilie@saisie.org"]
  s.homepage    = "http://www.google.com"
  s.summary     = "fuu fuu fuu."
  s.description = "Description of Creapassions."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "slim-rails"
  s.add_dependency "kaminari"
  # s.add_dependency "decent_exposure"
  s.add_dependency 'foundation-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'compass'
  s.add_dependency 'carrierwave'
  s.add_dependency 'simple_form'
  s.add_dependency 'font-awesome-rails'

  s.add_development_dependency "sqlite3"
end
