require 'spec_helper'

describe Contact do

  it "should return the sex" do
    c = Contact.new
    c.male?.should be_true
  
    c = Contact.new(:male => true)
    c.male?.should be_true
    
    c = Contact.new(:male => false)
    c.male?.should be_false
    c.female?.should be_true
  end
  
  it "should set default values in initialize" do
    c = Contact.new
    c.username.should == ''
    c.createdate.should_not be_nil
    c.modifieddate.should_not be_nil
    c.parentcontactid.should == 0
    c.firstname.should == ''
    c.middlename.should == ''
    c.lastname.should == ''
    c.prefixid.should == 0
    c.suffixid.should == 0
    c.male.should be_true
    c.smssn.should == ''
    c.aimsn.should == ''
    c.icqsn.should == ''
    c.jabbersn.should == ''
    c.msnsn.should == ''
    c.skypesn.should == ''
    c.ymsn.should == ''
    c.employeestatusid.should == ''
    c.employeenumber.should == ''
    c.jobtitle.should == ''
    c.jobclass.should == ''
    c.hoursofoperation.should == ''
    c.facebooksn.should == ''
    c.myspacesn.should == ''
    c.twittersn.should == ''
  end
  
  it "should be save" do
    Contact.count.should == 0
    
    user = create_user(:firstname => 'Túlio')
    user.save.should be_true
    
    c = Contact.new(:user => user)
    c.save.should be_true
    c.user.should_not be_nil
    c.user.id.should == user.id
    
    Contact.count.should == 1
  end
  
  it "should fill the values with user values" do
    user = create_user(:firstname => 'Túlio')
    user.save.should be_true
    
    c = Contact.new(:user => user)
    c.userid.should == user.id
    c.save.should be_true
    
    c = Contact.find(c.id)
    c.firstname.should == user.firstname
    c.middlename.should == user.middlename
    c.lastname.should == user.lastname
    c.companyid == user.companyid
  end
  
end



























