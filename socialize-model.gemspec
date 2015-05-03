$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "socialize-model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "socialize-model"
  s.version     = SocializeModel::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SocializeModel."
  s.description = "TODO: Description of SocializeModel."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.19"
  s.add_dependency 'factory_girl_rails'
  s.add_dependency 'database_cleaner'
  s.add_dependency 'shoulda-matchers'
  s.add_dependency 'rspec-rails'

  s.add_development_dependency "sqlite3"
end
