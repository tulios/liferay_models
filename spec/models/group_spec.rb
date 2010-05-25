require 'spec_helper'

describe Group do

  before (:each) do
    ClassName.new(:value => User.class_name).save!
    ClassName.find_user.should_not == nil
  end

  it "should generate a unique friendlyurl" do
    user = create_user(:firstname => 'Túlio')
		user.screenname = 'túlio silva'
		url = Group.generate_friendlyurl(user)
		
		user.save.should be_true
		user.screenname.should_not be_nil
		user.screenname.should == 'túlio silva'
		
		group = Group.new(
	    :companyid     => user.companyid,
	    :creatoruserid => user.id,
	    :classnameid   => ClassName.find_user.id,
	    :classpk       => user.id,
	    :friendlyurl   => url
    )
    group.save
    
    # associate the group with user
    user.groups << group
    user.save
    
    user.reload.groups.length.should == 1
    Group.find_all_by_friendlyurl(url).empty?.should be_false
  end
  
  it "should set default values in initialize" do
    g = Group.new
    g.classnameid.should == 0 # Community
    g.classpk.should == 0 # -"-
    g.parentgroupid ||= 0
    g.livegroupid.should == 0
    g.name.should == ''
    g.description.should == ''
    g.type_.should == 1
    g.typesettings.should == ''
    g.active_.should == true
  end
  
  it "should validate mandatory attributes" do
    g = Group.new
    g.save.should == false
    g.errors.should have(1).error_on(:creatoruserid)
  end
  
end
