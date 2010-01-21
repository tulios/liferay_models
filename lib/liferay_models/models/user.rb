module Liferay

  # Attributes:
  #   String:   uuid
  #   Integer:  userid
  #   Integer:  companyid
  #   DateTime: createdate
  #   DateTime: modifieddate
  #   Boolean:  defaultdate
  #   Integer:  contactid
  #   String:   password_
  #   Boolean:  passwordencrypted
  #   DateTime: passwordmodifieddate
  #   String:   reminderqueryquestion
  #   Integer:  gracelogincount
  #   String:   screenname
  #   String:   emailaddress (alias: email)    
  #   String:   openid
  #   Integer:  portraitid
  #   String:   languageid
  #   String:   timezoneid
  #   String:   greeting
  #   Text:     comments
  #   String:   firstname (alias: name)
  #   String:   middlename
  #   String:   lastname
  #     firstname + middlename + lastname => fullname
  #   String:   jobtitle
  #   DateTime: logindate
  #   String:   loginip
  #   DateTime: lastlogindate
  #   String:   lastloginip
  #   DateTime: lastfailedlogindate
  #   Integer:  failedloginattempts
  #   Boolean:  lockout
  #   DateTime: lockoutdate
  #   Boolean:  agreedtotermofuser
  #   Boolean:  active_  
  #
  class User < Base
    set_table_name :user_
    set_primary_key :userid
    
    alias_column :email, :emailaddress
    alias_column :name, :firstname
    
    validates_format_of :emailaddress, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,}\Z)/
    validates_uniqueness_of :emailaddress, :screenname
    
    belongs_to :contact, :foreign_key => 'contactid'
    has_and_belongs_to_many :groups,
                            :join_table              => 'users_groups',
                            :foreign_key             => self.primary_key,
                            :association_foreign_key => 'groupid'
    
    # Constructor
    
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    
    def fullname
    	array = []
   		array << firstname  unless firstname.nil?  or firstname.empty?
   		array << middlename unless middlename.nil? or middlename.empty?
   		array << lastname   unless lastname.nil?   or lastname.empty?
    	array.join(' ')
    end
    
    # Class Methods
    
    def self.liferay_class
    	'com.liferay.portal.model.User'
    end
    
    def self.generate_unique_screenname(user)
    	# default
    	screenname = "#{user.firstname} #{user.lastname}".to_url

    	if User.find_all_by_screenname(screenname).empty?
    		return screenname
    	end
		
		  fullname = user.fullname.to_url
		  if User.find_all_by_screenname(fullname).empty?
			  return fullname
		  end
		
		  user.email.to_url
    end
    
    # Private methods
    #
    private 
    
    def fill_default_values
    	unless self.uuid_
        require 'uuidtools'
        self.uuid_ = UUID.random_create.to_s
      end
      
		  self.createdate          ||= Time.now
      self.modifieddate        = Time.now
      self.defaultuser         = false
      unless self.password_
      	if firstname
      		self.password_ = firstname.downcase
      	end
        self.passwordencrypted = false
      end
      self.passwordreset = false if self.passwordreset.nil?
      self.gracelogincount     = 0
      self.screenname          ||= User.generate_unique_screenname(self)
      self.emailaddress        ||= ''
      self.portraitid          ||= 0
      self.languageid          ||= 'pt_BR'
      self.timezoneid          ||= 'America/Sao_Paulo'
      self.greeting            ||= "Bem vindo #{self.firstname}"
      self.comments            ||= ''
      self.loginip             ||= ''
      self.lastloginip         ||= ''
      self.failedloginattempts = 0
      self.lockout             = false
      self.agreedtotermsofuse  = true
      self.active_ = true if self.active_.nil?
      self.openid              ||= ''
    end
    
  end
  
end





































