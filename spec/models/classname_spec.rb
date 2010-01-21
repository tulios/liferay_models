require 'spec_helper'

describe Classname do

  it "should be save" do
    Classname.count.should == 0
    c = Classname.new(:value => Counter.class_name)
    c.save.should be_true
    Classname.count.should == 1
  end
  
  it "should be found" do
    c = Classname.new(:value => Counter.class_name)
    c.save.should be_true
    
    result = Classname.find_counter
    result.should_not be_nil

    result.id.should == c.id
  end
  
end
