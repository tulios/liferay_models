begin
  require 'spec'
rescue LoadError
  require 'rubygems' unless ENV['NO_RUBYGEMS']
  gem 'rspec'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'active_support'
require 'active_support/test_case'
require 'active_support/dependencies'
require 'active_record/fixtures'

require 'liferay_models'
require 'helper/database_connector'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger.level = Logger::FATAL

DatabaseConnector.establish_connection

Spec::Runner.configure do |config|
  
  config.before(:each) do
    con = DatabaseConnector.connection
    [
      'counter', 'classname_', 'company', 'role_', 'user_', 'contact_', 'group_',
      'users_groups'
    ].each do |table|
      con.execute("truncate #{table}")
    end
  end
  
  config.after(:each) do
  end

end

include Liferay

# Helper methods
def create_company
  company = Company.new(
    :webid => 'www.liferay_models.com',
    :key_ => 'rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACCzTMrBJibwvdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=',
    :virtualhost => 'localhost',
    :mx => 'www.liferay_models.com'
  )
  
  company
end

def create_user(params = {})
  c = create_company
  c.save
  
	hash ={
		:companyid => c.id,
		:firstname => params[:firstname],
		:middlename => 'Da',
		:lastname => 'Silva',
		:emailaddress => "#{params[:firstname]}@gmail.com"
	}
	
	User.new(hash.merge(params))
end


















