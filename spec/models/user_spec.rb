require 'spec_helper'

describe User do
                                                
  before (:each) do
    ClassName.new(:value => User.class_name).save!
    ClassName.find_user.should_not == nil
  end

  it "should have a set method for alias column email" do
    email1 = 'email1@email.com'
    email2 = 'email2@email.com'
    
    u = User.new
    
    u.emailaddress = email1
    u.email.should == email1
    
    u.email = email2
    u.emailaddress.should == email2
    u.email.should == email2
  end
  
  it "should have a set method for alias column name" do
    name1 = 'name1'
    name2 = 'name2'
    
    u = User.new
    
    u.firstname = name1
    u.name.should == name1
    
    u.name = name2
    u.firstname.should == name2
    u.name.should == name2
  end
  
  it "should generate a fullname with firstname, middlename and lastname" do
    u = User.new(:firstname => 'Joao', :middlename => 'Da', :lastname => 'Silva')
    u.fullname.should == 'Joao Da Silva'
    
    u = User.new(:firstname => '', :middlename => '', :lastname => '')
    u.fullname.should == ''
    
    u = User.new(:firstname => 'Joao', :middlename => '', :lastname => 'Silva')
    u.fullname.should == 'Joao Silva'
    
    u = User.new(:firstname => 'Joao', :middlename => '', :lastname => '')
    u.fullname.should == 'Joao'
    
    u = User.new(:firstname => '', :middlename => '', :lastname => 'Silva')
    u.fullname.should == 'Silva'
    
    u = User.new(:firstname => '', :middlename => 'Da', :lastname => '')
    u.fullname.should == 'Da'
  end
  
  it "should set default values in initialize" do
    u = User.new(:firstname => 'JoSe')
    
    u.uuid_.should_not be_nil
    u.createdate.should_not be_nil
    u.modifieddate.should_not be_nil
    u.defaultuser.should be_false
    u.password_.should == 'jose'
    u.passwordencrypted.should be_false
    u.passwordreset.should be_false
    u.gracelogincount.should == 0
    u.screenname.should == 'jose'
    u.emailaddress.should == ''
    u.portraitid.should == 0
    u.languageid.should == 'pt_BR'
    u.timezoneid.should == 'America/Sao_Paulo'
    u.greeting.should == "Bem vindo JoSe"
    u.comments.should == ''
    u.loginip.should == ''
    u.lastloginip.should == ''
    u.failedloginattempts.should == 0
    u.lockout.should be_false
    u.agreedtotermsofuse.should be_true
    u.active_.should be_true
    u.openid.should == ''
  end
  
  it "should save with save and save!" do
    user = create_user(:firstname => 'Túlio')
		user.save.should be_true
		
		user = create_user(:firstname => 'José')
		begin
		  user.save!
		rescue
		  raise "Test fails!"
		end
  end
  
  it "should generate a unique screenname" do
		user = create_user(:firstname => 'Túlio')
		user.save.should be_true
		user.screenname.should_not be_nil
		user.screenname.should == 'tulio-silva'
		
		user2 = create_user(:firstname => 'Túlio', :emailaddress => 'email@email.com')
		user2.save.should be_true
		user2.screenname.should_not be_nil
		user2.screenname.should == 'tulio-da-silva'
		
		user3 = create_user(:firstname => 'Túlio', :emailaddress => 'email2@email.com')
		user3.save.should be_true
		user3.screenname.should_not be_nil
		user3.screenname.should == 'email2-at-email-dot-com'
	end
	
	it "should have a valid email" do
		user = create_user(:firstname => 'Carlinhos', :emailaddress => 'invalid')
		
		user.save.should_not be_true
		user.should have(1).error
		
		user.emailaddress = "valid@email.com"
		
		user.save.should be_true
		user.should have(:no).errors
	end
	
	it "should have a unique email" do
		user = create_user(:firstname => 'Carlinhos', :emailaddress => "email@email.com")
		user.save.should be_true
		user.should have(:no).errors
		
		user2 = create_user(:firstname => 'Jose', :emailaddress => "email@email.com")
		user2.save.should_not be_true
		user2.should have(1).error
	end

  it "should associate with contact" do
    user = create_user(:firstname => 'Carlinhos', :emailaddress => "email@email.com")
		user.save.should be_true
		
		contact = Contact.new(:user => user)
		contact.save.should be_true
		
		user.update_attributes(:contact => contact)
		user = User.find(user.id)
		
		user.contact.should_not be_nil
		user.contact.id.should == contact.id
		contact.user.id.should == user.id
  end

  it "should associate with group" do
    user = create_user(:firstname => 'Túlio')
		user.save.should be_true
		url = Group.generate_friendlyurl(user)
		
		group = create_group(user)
    group.save.should be_true
    
    # associate the group with user
    user.groups << group
    user.save.should be_true
    
    user.reload.groups.length.should == 1
  end

end











