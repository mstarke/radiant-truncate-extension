# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-truncate-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-truncate-extension"
  s.version     = RadiantTruncateExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantTruncateExtension::AUTHORS
  s.email       = RadiantTruncateExtension::EMAIL
  s.homepage    = RadiantTruncateExtension::URL
  s.summary     = RadiantTruncateExtension::SUMMARY
  s.description = RadiantTruncateExtension::DESCRIPTION
  
  s.add_dependency "nokogiri", "~> 1.5.0"
  
  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]

  # s.add_dependency "some_gem", "~> 1.0.0"

  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem "radiant-truncate-extension", :version => "~> #{RadiantTruncateExtension::VERSION}"
  }
end