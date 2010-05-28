begin
  
  require 'spec'
  require 'active_support'
  require 'active_support/test_case'
  require 'active_support/dependencies'
  require 'active_record/fixtures'
                      
rescue LoadError
  require 'rubygems' unless ENV['NO_RUBYGEMS']
  
  gem 'rspec'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'liferay_models'
require 'helper/database_connector'
require 'test_util'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger.level = Logger::FATAL

Spec::Runner.configure do |config|
  config.before(:each) do
    con = DatabaseConnector.connection
    [
      'company', 'counter', 'classname_', 'role_', 'user_', 'contact_', 'group_',
      'users_groups', 'tagsasset', 'tagsentry', 'tagsassets_tagsentries' , 'tagsvocabulary'
    ].each do |table|
      con.execute("truncate #{table}")
    end
  end
  
  config.after(:each) do
  end

end

include Liferay
include LiferayModels::TestUtil
