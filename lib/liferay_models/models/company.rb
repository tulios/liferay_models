module Liferay
  
  # Attributes:
  #   Integer: companyid
  #   Integer: accountid
  #   String: webid
  #   Text: key_
  #   String: virtualhost
  #   String: mx
  #   Text: homeurl
  #   Integer: logoid
  #   Boolean: system
  #
  class Company < Base
    set_table_name :company
    set_primary_key :companyid
    
    validates_uniqueness_of :webid
    
    def self.class_name
      'com.liferay.portal.model.Company'
    end
    
  end
end
