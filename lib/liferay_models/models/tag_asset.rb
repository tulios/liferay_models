module Liferay

  class TagAsset < Base
    set_table_name :tagsasset
    set_primary_key :assetid
    
    has_and_belongs_to_many :tag_entries,
                            :join_table              => 'tagsassets_tagsentries',
                            :foreign_key             => self.primary_key,
                            :association_foreign_key => 'entryid'
    
    # Constructor    
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    
    # Class Methods
    
    def self.class_name
      'com.liferay.portlet.tags.model.TagsAsset'
    end
    
    # Private methods
    #
    private 
    
    def fill_default_values
    end
    
  end
    
end
