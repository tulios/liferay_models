require 'spec_helper'

describe TagAsset do
  
  before (:each) do
    Classname.new(:value => TagAsset.class_name).save!
    Classname.find_tag_asset.should_not be_nil
    
    Classname.new(:value => User.class_name).save!
    Classname.find_user.should_not be_nil
    
    Classname.new(:value => TagEntry.class_name).save!
    Classname.find_tag_entry.should_not be_nil
  end
  
  it 'should be saved' do
    user = create_user_with_group!(:firstname => 'Túlio')
    
    tag_asset = create_tag_asset(user)
    tag_asset.save.should be_true
  end
  
  it 'should associate with tag_entry' do

    user = create_user_with_group!(:firstname => 'Túlio')
  
   	tag_entry = create_tag_entry_with_vocabulary!(user)
  
    tag_asset = create_tag_asset(user)
    tag_asset.save.should be_true 
  
    tag_asset.tag_entries << tag_entry
    tag_asset.save.should be_true
    
    tag_asset.reload.tag_entries.length.should == 1
  end
  
  it 'should find all tag entries from a certain asset' do
    owner1 = create_user_with_group!(:firstname => 'Túlio')
    tag_asset1 = create_tag_asset(owner1)
    tag_asset1.save.should be_true
    
    owner2 = create_user_with_group!(:firstname => 'Karina')
    tag_asset2 = create_tag_asset(owner2)
    tag_asset2.save.should be_true
    
    #Tagging assets
    (0...10).each do |number|
      user = create_user_with_group!(:firstname => "name-#{number}")
      
      tag_entry = create_tag_entry_with_vocabulary!(user)
      tag_entry.save.should be_true 
      
      if number.odd?
        tag_asset1.tag_entries << tag_entry
      end
      tag_asset2.tag_entries << tag_entry
    end
    tag_asset1.save.should be_true
    tag_asset2.save.should be_true

    #checking assets tags
    classnameid = Classname.find_user.id
    tag_asset1.tag_entries.count.should == 5
    tag_asset2.tag_entries.count.should == 10
    
    #checking com.liferay.portal.model.User tags
    
    
    
  end
end

























