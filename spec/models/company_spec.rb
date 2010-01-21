require 'spec_helper'

describe Company do

  it "should be save" do
    company = Company.new(
      :webid => 'www.liferay_models.com',
      :key_ => 'rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACCzTMrBJibwvdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=',
      :virtualhost => 'localhost',
      :mx => 'www.liferay_models.com'
    )
    
    Company.count.should == 0
    company.save.should be_true
    Company.count.should == 1
  end

end
