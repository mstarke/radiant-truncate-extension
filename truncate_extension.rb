require "radiant-truncate-extension"

class TruncateExtension < Radiant::Extension
  version RadiantTruncateExtension::VERSION
  description RadiantTruncateExtension::DESCRIPTION
  url RadiantTruncateExtension::URL
  
  extension_config do |config|
    config.gem 'nokogiri'
  end
  
  def activate
    Page.send :include, TruncateTags
  end
end