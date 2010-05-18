module Liferay

  class TagEntry < Base
    set_table_name :tagsentry
    set_primary_key :entryid
    
    belongs_to :tag_vocabulary, :foreign_key => 'vocabularyid'
    
    has_and_belongs_to_many :tag_assets,
                            :join_table              => 'tagsassets_tagsentries',
                            :foreign_key             => self.primary_key,
                            :association_foreign_key => 'assetid'
    
    # Constructor    
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    
    # Class Methods
    
    def self.class_name
      'com.liferay.portlet.tags.model.TagsEntry'
    end
    
    # Private methods
    #
    private 
    
    def fill_default_values
      self.parententryid ||= 0
    end
    
  end
    
end





































