module Liferay

  # Attributes:
  #   Integer: roleid
  #   Integer: companyid
  #   Integer: classnameid
  #   Integer: classpk
  #   String:  name
  #   Text:    title
  #   Text:    description
  #   Integer: type_ (1 = regular, 2 = community, 3 = organization)
  #   String:  subtype  
  #
  class Role < Base
    set_table_name :role_
    set_primary_key :roleid
    
    belongs_to :company, :foreign_key => 'companyid'
    
    # Constructor
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    def save
      classpk = set_liferay_id
		  super
    end
    
    def fill_default_values
      if classnameid.nil? or classnameid == 0
        classnameid = Role.classname.id
      end
      
      if type_.nil? or type_ == 0
        type_ = 1 #regular
      end
    end
    
    # Class methods
    def self class_name
      'com.liferay.portal.model.Role'
    end
    
    def self.classname
    
      cn = ClassName.find_all_by_value(Role.class_name)
      if cn.empty?
        cn = ClassName.new(:value => Role.class_name)
        cn.save
        
        return cn
      end
      
      cn[0]
    end
    
  end
end
