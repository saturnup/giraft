$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "giraft/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "giraft"
  s.version     = Giraft::VERSION
  s.authors     = ["John DeSilva"]
  s.email       = ["desilvjo@umich.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Giraft."
  s.description = "TODO: Description of Giraft."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
