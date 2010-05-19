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
      'users_groups', 'tagsasset', 'tagsentry', 'tagsassets_tagsentries' , 'tagsvocabulary'
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


def create_group(user)
	Group.new(
    :companyid     => user.companyid,
    :creatoruserid => user.id,
    :classnameid   => Classname.find_user.id,
    :classpk       => user.id,
    :friendlyurl   => Group.generate_friendlyurl(user)
  )
end

def create_user_with_group!(params = {})
  user = create_user(params)
 	user.save.should be_true
 	
 	group = create_group(user)
 	group.save.should be_true
 	
 	user.groups << group
 	user.save.should be_true

  user
end

def create_tag_vocabulary(user, params = {} )
  
  hash = { 
    :createdate => Time.now,
    :modifieddate => Time.now,
    :name => "tag-vocabulary-#{rand(1024)}",
    :description => "tag-description",
    :folksonomy => true,
    
    :groupid => user.groups.first.groupid ,
    :companyid => user.companyid,
    :userid => user.userid,
    :username => user.username
  }
  
  TagVocabulary.new(hash.merge(params));
end

def create_tag_entry(vocabulary, params = {})
  
  hash = {
    :name => "tag-#{rand(1024)}",
    :createdate => Time.now,
    :modifieddate => Time.now,
    
    :groupid => vocabulary.groupid,
    :companyid => vocabulary.companyid,
    :userid => vocabulary.userid,
    :username => vocabulary.username,
    
    :vocabularyid => vocabulary.id
  }
  
  TagEntry.new(hash.merge(params))
end

def create_tag_entry_with_vocabulary!(user, params ={})
  vocabulary = create_tag_vocabulary(user)
 	vocabulary.save.should be_true

 	tag_entry = create_tag_entry(vocabulary, params)
 	tag_entry.save.should be_true
 	
 	tag_entry
end

def create_tag_asset(user, params ={})
  hash = {
    :createdate => Time.now,
    :modifieddate => Time.now,
    :classnameid => Classname.find_user.id,
    :classpk => user.id,
    :visible => true,
    :startdate => Time.now,
    :enddate => Time.now + 1.day,
    :publishdate => Time.now,
    :expirationdate => Time.now + 1.day,
    :mimetype => "text/html",
    :title => "Title",
    :description => "Description",
    :summary => "Summary",
    :url => "http://www.google.com",
    :height => 100,
    :width => 100,
    :priority => 0,
    :viewcount => 1000,
    
    :groupid => user.groups.first.groupid,
    :companyid => user.companyid,
    :userid => user.userid,
    :username => user.username
  }
  
  TagAsset.new(hash.merge(params))
end

