require 'spec_helper'

describe Counter do

  it "should save the first counter if it does not exist" do
    Counter.count.should == 0
    Counter.increment_id.should == 1
    Counter.count.should == 1
    Counter.find(Counter.class_name).should_not be_nil
  end
  
  it "should increment the currentid" do
    (1..10).each do |value|
      Counter.increment_id.should == value
      Counter.count.should == 1
    end
  end
  
end
