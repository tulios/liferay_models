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
    
    def self.find_all_by_classnameid_with_quantity(classnameid)
      TagEntry.find(:all, 
                    :select => "#{TagEntry.table_name}.#{TagEntry.primary_key}, 
                                #{TagEntry.table_name}.name, 
                                count(#{TagAsset.table_name}.#{TagAsset.primary_key}) quantity",
                    :joins => :tag_assets, 
                    :conditions => ["classnameid = ?", classnameid], 
                    :group => "#{TagEntry.table_name}.#{TagEntry.primary_key}, 
                               #{TagEntry.table_name}.name")
    end
    
    # Private methods
    #
    private 
    
    def fill_default_values
      self.parententryid ||= 0
    end
    
  end
    
end





































