module Liferay
  
  # Attributes:
  #   Integer: classnameid
  #   String: value
  #
  class ClassName < Base
    set_table_name :classname_
    set_primary_key :classnameid
    
    CLASS_NAMES = [
      "com.liferay.portal.model.Account",
      "com.liferay.portal.model.Address",
      "com.liferay.portal.model.BrowserTracker",
      "com.liferay.portal.model.ClassName",
      "com.liferay.portal.model.Company",
      "com.liferay.portal.model.Contact",
      "com.liferay.portal.model.Country",
      "com.liferay.portal.model.EmailAddress",
      "com.liferay.portal.model.Group",
      "com.liferay.portal.model.Image",
      "com.liferay.portal.model.Layout",
      "com.liferay.portal.model.LayoutSet",
      "com.liferay.portal.model.ListType",
      "com.liferay.portal.model.MembershipRequest",
      "com.liferay.portal.model.OrgGroupPermission",
      "com.liferay.portal.model.OrgGroupRole",
      "com.liferay.portal.model.OrgLabor",
      "com.liferay.portal.model.Organization",
      "com.liferay.portal.model.PasswordPolicy",
      "com.liferay.portal.model.PasswordPolicyRel",
      "com.liferay.portal.model.PasswordTracker",
      "com.liferay.portal.model.Permission",
      "com.liferay.portal.model.Phone",
      "com.liferay.portal.model.PluginSetting",
      "com.liferay.portal.model.Portlet",
      "com.liferay.portal.model.PortletItem",
      "com.liferay.portal.model.PortletPreferences",
      "com.liferay.portal.model.Region",
      "com.liferay.portal.model.Release",
      "com.liferay.portal.model.Resource",
      "com.liferay.portal.model.ResourceAction",
      "com.liferay.portal.model.ResourceCode",
      "com.liferay.portal.model.ResourcePermission",
      "com.liferay.portal.model.Role",
      "com.liferay.portal.model.ServiceComponent",
      "com.liferay.portal.model.Shard",
      "com.liferay.portal.model.Subscription",
      "com.liferay.portal.model.User",
      "com.liferay.portal.model.UserGroup",
      "com.liferay.portal.model.UserGroupRole",
      "com.liferay.portal.model.UserIdMapper",
      "com.liferay.portal.model.UserTracker",
      "com.liferay.portal.model.UserTrackerPath",
      "com.liferay.portal.model.WebDAVProps",
      "com.liferay.portal.model.Website",
      "com.liferay.portlet.announcements.model.AnnouncementsDelivery",
      "com.liferay.portlet.announcements.model.AnnouncementsEntry",
      "com.liferay.portlet.announcements.model.AnnouncementsFlag",
      "com.liferay.portlet.blogs.model.BlogsEntry",
      "com.liferay.portlet.blogs.model.BlogsStatsUser",
      "com.liferay.portlet.bookmarks.model.BookmarksEntry",
      "com.liferay.portlet.bookmarks.model.BookmarksFolder",
      "com.liferay.portlet.calendar.model.CalEvent",
      "com.liferay.portlet.documentlibrary.model.DLFileEntry",
      "com.liferay.portlet.documentlibrary.model.DLFileRank",
      "com.liferay.portlet.documentlibrary.model.DLFileShortcut",
      "com.liferay.portlet.documentlibrary.model.DLFileVersion",
      "com.liferay.portlet.documentlibrary.model.DLFolder",
      "com.liferay.portlet.expando.model.ExpandoColumn",
      "com.liferay.portlet.expando.model.ExpandoRow",
      "com.liferay.portlet.expando.model.ExpandoTable",
      "com.liferay.portlet.expando.model.ExpandoValue",
      "com.liferay.portlet.imagegallery.model.IGFolder",
      "com.liferay.portlet.imagegallery.model.IGImage",
      "com.liferay.portlet.journal.model.JournalArticle",
      "com.liferay.portlet.journal.model.JournalArticleImage",
      "com.liferay.portlet.journal.model.JournalArticleResource",
      "com.liferay.portlet.journal.model.JournalContentSearch",
      "com.liferay.portlet.journal.model.JournalFeed",
      "com.liferay.portlet.journal.model.JournalStructure",
      "com.liferay.portlet.journal.model.JournalTemplate",
      "com.liferay.portlet.messageboards.model.MBBan",
      "com.liferay.portlet.messageboards.model.MBCategory",
      "com.liferay.portlet.messageboards.model.MBDiscussion",
      "com.liferay.portlet.messageboards.model.MBMailingList",
      "com.liferay.portlet.messageboards.model.MBMessage",
      "com.liferay.portlet.messageboards.model.MBMessageFlag",
      "com.liferay.portlet.messageboards.model.MBStatsUser",
      "com.liferay.portlet.messageboards.model.MBThread",
      "com.liferay.portlet.polls.model.PollsChoice",
      "com.liferay.portlet.polls.model.PollsQuestion",
      "com.liferay.portlet.polls.model.PollsVote",
      "com.liferay.portlet.ratings.model.RatingsEntry",
      "com.liferay.portlet.ratings.model.RatingsStats",
      "com.liferay.portlet.shopping.model.ShoppingCart",
      "com.liferay.portlet.shopping.model.ShoppingCategory",
      "com.liferay.portlet.shopping.model.ShoppingCoupon",
      "com.liferay.portlet.shopping.model.ShoppingItem",
      "com.liferay.portlet.shopping.model.ShoppingItemField",
      "com.liferay.portlet.shopping.model.ShoppingItemPrice",
      "com.liferay.portlet.shopping.model.ShoppingOrder",
      "com.liferay.portlet.shopping.model.ShoppingOrderItem",
      "com.liferay.portlet.social.model.SocialActivity",
      "com.liferay.portlet.social.model.SocialRelation",
      "com.liferay.portlet.social.model.SocialRequest",
      "com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion",
      "com.liferay.portlet.softwarecatalog.model.SCLicense",
      "com.liferay.portlet.softwarecatalog.model.SCProductEntry",
      "com.liferay.portlet.softwarecatalog.model.SCProductScreenshot",
      "com.liferay.portlet.softwarecatalog.model.SCProductVersion",
      "com.liferay.portlet.tags.model.TagsAsset",
      "com.liferay.portlet.tags.model.TagsEntry",
      "com.liferay.portlet.tags.model.TagsProperty",
      "com.liferay.portlet.tags.model.TagsSource",
      "com.liferay.portlet.tags.model.TagsVocabulary",
      "com.liferay.portlet.tasks.model.TasksProposal",
      "com.liferay.portlet.tasks.model.TasksReview",
      "com.liferay.portlet.wiki.model.WikiNode",
      "com.liferay.portlet.wiki.model.WikiPage",
      "com.liferay.portlet.wiki.model.WikiPageResource"
    ]
    
    def self.class_name
      'com.liferay.portal.model.ClassName'
    end
    
    def self.find_user
      ClassName.find_by_value(User.class_name)
    end
    
    def self.find_counter
      ClassName.find_by_value(Counter.class_name)
    end
    
    def self.find_role
      ClassName.find_by_value(Role.class_name)
    end
    
    def self.find_tag_entry
      ClassName.find_by_value(TagEntry.class_name)
    end
    
    def self.find_tag_asset
      ClassName.find_by_value(TagAsset.class_name)
    end
    
    def self.find_tag_vocabulary
      ClassName.find_by_value(TagVocabulary.class_name)
    end
    
  end
end
