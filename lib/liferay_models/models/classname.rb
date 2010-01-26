module Liferay
  
  # Attributes:
  #   Integer: classnameid
  #   String: value
  #
  class Classname < Base
    set_table_name :classname_
    set_primary_key :classnameid
    
    def self.class_name
      'com.liferay.portal.model.ClassName'
    end
    
    def self.find_user
      Classname.find_by_value(User.class_name)
    end
    
    def self.find_counter
      Classname.find_by_value(Counter.class_name)
    end
    
    def self.find_role
      Classname.find_by_value(Role.class_name)
    end
    
  end
end
