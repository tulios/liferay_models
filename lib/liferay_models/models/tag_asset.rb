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
    
    def self.asset_publisher_class_names
      {
        :blogs_entry           => "com.liferay.portlet.blogs.model.BlogsEntry",	
        :bookmarks_entry       => "com.liferay.portlet.bookmarks.model.BookmarksEntry",
        :document_library_file => "com.liferay.portlet.documentlibrary.model.DLFileEntry",
        :image_gallery_image   => "com.liferay.portlet.imagegallery.model.IGImage",
        :journal_article       => "com.liferay.portlet.journal.model.JournalArticle",
        :message_board_message => "com.liferay.portlet.messageboards.model.MBMessage",
        :wiki_page             => "com.liferay.portlet.wiki.model.WikiPage"
      }
    end
    
    # Private methods
    #
    private 
    
    def fill_default_values
    end
    
  end
    
end
