[
  'counter', 'classname', 'company', 'role', 'user', 'contact'
].each do |test|
  system("spec spec/models/#{test}_spec.rb")  
end
