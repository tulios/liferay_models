module Liferay
  
  # Attributes:
  #   Integer: classnameid
  #   String: value
  #
  class Classname < Base
    set_table_name :classname_
    set_primary_key :classnameid
    
    def self.taggables
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
    
    def self.find_tag_entry
      Classname.find_by_value(TagEntry.class_name)
    end
    
    def self.find_tag_asset
      Classname.find_by_value(TagAsset.class_name)
    end
    
    def self.find_tag_vocabulary
      Classname.find_by_value(TagVocabulary.class_name)
    end
    
  end
end
