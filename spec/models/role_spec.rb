require 'spec_helper'

describe Role do

  it "should have a classname" do
    Classname.count.should == 0
    cn = Role.classname
    cn.should_not be_nil
    cn.id.should > 0
    Classname.count.should == 1
  end

  it "should be save" do
    company = Company.create(
      :webid => 'www.liferay_models.com',
      :key_ => 'key',
      :virtualhost => 'localhost',
      :mx => 'www.liferay_models.com'
    )
    
    Company.count.should == 1
    Role.count.should == 0
    
    role = Role.new(
      :companyid => company.id,
      :name => 'Role1', :title => 'ROLE_1',
      :description => 'A new role!'
    )
    role.save.should be_true

    role = Role.find(role.id)
    role.company.should_not be_nil
    
    Company.count.should == 1
    Role.count.should == 1
  end

end
