require 'spec_helper'

describe ClassName do

  it "should be save" do
    ClassName.count.should == 0
    c = ClassName.new(:value => Counter.class_name)
    c.save.should be_true
    ClassName.count.should == 1
  end
  
  it "should be found" do
    c = ClassName.new(:value => Counter.class_name)
    c.save.should be_true
    
    result = ClassName.find_counter
    result.should_not be_nil

    result.id.should == c.id
  end
  
end
