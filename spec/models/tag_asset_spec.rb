require 'spec_helper'

describe TagAsset do
  
  before (:each) do
    ClassName.new(:value => TagAsset.class_name).save!
    ClassName.find_tag_asset.should_not be_nil
    
    ClassName.new(:value => User.class_name).save!
    ClassName.find_user.should_not be_nil
    
    ClassName.new(:value => TagEntry.class_name).save!
    ClassName.find_tag_entry.should_not be_nil
    
    TagAsset.asset_publisher_class_names.each do |key, value|
      ClassName.new(:value => value).save!
      ClassName.find_by_value(value).should_not be_nil
    end
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
    classnameid = ClassName.find_user.id
    
    owner1 = create_user_with_group!(:firstname => 'Túlio')
    tag_asset1 = create_tag_asset(owner1, :classnameid => classnameid)
    tag_asset1.save.should be_true

    owner2 = create_user_with_group!(:firstname => 'Karina')
    tag_asset2 = create_tag_asset(owner2, :classnameid => classnameid)
    tag_asset2.save.should be_true
    
    #Tagging assets
    (0...10).each do |number|
      user = create_user_with_group!(:firstname => "name-#{number}")
      
      tag_entry = create_tag_entry_with_vocabulary!(user, :name => "tag-#{number + 1}")
      tag_entry.save.should be_true 
      
      if number.odd?
        tag_asset1.tag_entries << tag_entry
      end
      tag_asset2.tag_entries << tag_entry
    end
    tag_asset1.save.should be_true
    tag_asset2.save.should be_true

    #checking assets tags
    tag_asset1.tag_entries.count.should == 5
    tag_asset2.tag_entries.count.should == 10

    entries = TagEntry.find_all_by_classnameid_with_quantity(classnameid)
    
    entries.should_not be_nil
    entries.length.should == 10
    
    entries.each do |tag|
      if tag.name.split('-')[-1].to_i.odd?
        tag.quantity.to_i.should == 1
      else
        tag.quantity.to_i.should == 2
      end
    end
    
  end
  
  it 'should find all tag entries from informed class names' do
    owner = create_user_with_group!(:firstname => 'Túlio')
    
    tag_entry = create_tag_entry_with_vocabulary!(owner, :name => "tag")
    
    x = 1
        
    TagAsset.asset_publisher_class_names.each do |key, value|
      2.times do
        tag_asset = create_tag_asset(owner, {:classnameid => ClassName.find_by_value(value).id, :classpk => x})
        tag_asset.tag_entries << tag_entry
        tag_asset.save.should be_true
        x += 1
      end
    end
    
    ids = TagAsset.asset_publisher_class_names.collect{|key, value| ClassName.find_by_value(value).id}
    entries = TagEntry.find_all_by_classnameid_with_quantity(ids)
    
    entries.should_not be_nil
    entries.length.should == 1
    entries[0].quantity.should == (TagAsset.asset_publisher_class_names.length * 2).to_s
  end
  
end



























































