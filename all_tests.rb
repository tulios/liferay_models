#!/usr/bin/env ruby

[
  'counter', 'classname', 'company', 'role', 'user', 'contact', 'tag_entry' , 'tag_vocabulary' , 'tag_asset'
].each do |test|
  system("spec spec/models/#{test}_spec.rb")  
end



