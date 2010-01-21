module Liferay

  # Attributes:
  #   Integer: groupid
  #   Integer: companyid
  #   Integer: creatoruserid
  #   Integer: classnameid
  #   Integer: classpk
  #   Integer: parentgroupid
  #   Integer: ivegroupid
  #   String: name
  #   Text: description
  #   Integer: type_
  #   Text: typesettings
  #   String: friendlyurl
  #   Boolean: active_
  #
  class Group < Base
    set_table_name :group_
    set_primary_key :groupid
    
    validates_presence_of :creatoruserid
    
    # Constructor
    
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    
    def active?
      self.active_
    end
    
    # Class methods
    
    def self.liferay_class
    	'com.liferay.portal.model.UserGroup'
    end
    
    def self.generate_friendlyurl(user)
		  "/#{user.screenname.to_url}"
    end  
    
    private
    
    def fill_default_values
    	self.classnameid   ||= 0 # Community
      self.classpk       ||= 0 # -"-
      self.parentgroupid ||= 0
      self.livegroupid   ||= 0
      self.name          ||= ''
      self.description   ||= ''
      self.type_         ||= 1
      self.typesettings  ||= ''
      self.active_       ||= true
    end
    
  end

end
