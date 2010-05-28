require 'spec/factories'

module LiferayModels::TestUtil
  
  def create_company
    Factory.build :company
  end

  def create_user(params = {})
    
    user = Factory.build :user, params
    user.screenname = User.generate_unique_screenname(user)
    user
  end

  def create_group(user, params = {})
    hash = {
      :companyid     => user.companyid,
      :creatoruserid => user.id,
      :classnameid   => ClassName.find_user.id,
      :classpk       => user.id,
      :friendlyurl   => Group.generate_friendlyurl(user)
    }

    Factory.build :group, hash.merge(params)
  end

  def create_user_with_group!(params = {})
    user = create_user(params)
   	user.save.should be_true

   	group = create_group(user, :name => "Group for #{user.screenname}")
   	group.save.should be_true
    
   	user.groups << group
   	user.save.should be_true

    user
  end

  def create_tag_vocabulary(user, params = {})
    hash = { 
      :groupid => user.groups.first.groupid ,
      :companyid => user.companyid,
      :userid => user.userid,
      :username => user.username
    }

    Factory.build :tag_vocabulary, hash.merge(params)
  end

  def create_tag_entry(vocabulary, params = {})
    hash = {
      :groupid => vocabulary.groupid,
      :companyid => vocabulary.companyid,
      :userid => vocabulary.userid,
      :username => vocabulary.username,

      :vocabularyid => vocabulary.id
    }

    Factory.build :tag_entry, hash.merge(params)
  end

  def create_tag_entry_with_vocabulary!(user, params ={})
    vocabulary = create_tag_vocabulary(user)
   	vocabulary.save.should be_true

   	tag_entry = create_tag_entry(vocabulary, params)
   	tag_entry.save.should be_true

   	tag_entry
  end

  def create_tag_asset(user, params ={})
    hash = {
      :classpk => user.id,
      :groupid => user.groups.first.groupid,
      :companyid => user.companyid,
      :userid => user.userid,
      :username => user.username
    }

    Factory.build :tag_asset, hash.merge(params)
  end
  
end