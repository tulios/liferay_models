require 'spec_helper'

describe TagEntry do
  
  before (:each) do
    ClassName.new(:value => TagEntry.class_name).save!
    ClassName.find_tag_entry.should_not == nil
  
    ClassName.new(:value => TagVocabulary.class_name).save!
    ClassName.find_tag_vocabulary.should_not be_nil
    
    ClassName.new(:value => User.class_name).save!
    ClassName.find_user.should_not be_nil
  end
  
  it 'should be saved' do
    user = create_user_with_group!(:firstname => 'Túlio')
   	
   	vocabulary = create_tag_vocabulary(user)
   	vocabulary.save.should be_true
   	
   	tag_entry = create_tag_entry(vocabulary)
   	tag_entry.save.should be_true
  end
  
  
  it 'should associate with tag_asset' do

    user = create_user_with_group!(:firstname => 'Túlio')
  
    tag_entry = create_tag_entry_with_vocabulary!(user)
  
    tag_asset = create_tag_asset(user)
    tag_asset.save.should be_true 
  
    tag_entry.tag_assets << tag_asset
    tag_entry.save.should be_true
    
    tag_entry.reload.tag_assets.length.should == 1
  end

  
  it 'should find all tags assets from a certain tag' do
    owner = create_user_with_group!(:firstname => 'Túlio')
    tag_entry1 = create_tag_entry_with_vocabulary!(owner, :name => 'tag1')
    tag_entry2 = create_tag_entry_with_vocabulary!(owner, :name => 'tag2')
    
    #Creating 10 assets with the same tag
    (0...10).each do |number|
      user = create_user_with_group!(:firstname => "name-#{number}")
      
      tag_asset = create_tag_asset(user)
      tag_asset.save.should be_true 
      
      if number.odd?
        tag_asset.tag_entries << tag_entry1
      end

      tag_asset.tag_entries << tag_entry2
      tag_asset.save.should be_true
    end
    
    #Counting assets for each tag 
    classnameid = ClassName.find_user.id
    tag_entry1.tag_assets.count(:conditions => {:classnameid => classnameid}).should == 5
    tag_entry2.tag_assets.count(:conditions => {:classnameid => classnameid}).should == 10
  end
  
end








































