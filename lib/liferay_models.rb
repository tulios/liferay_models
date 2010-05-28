$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module LiferayModels
  VERSION = '0.2'
end

require File.join(File.dirname(__FILE__), 'liferay_models', 'liferay')
include Liferay