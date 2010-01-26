require 'yaml'
require 'pg'
  
module DatabaseConnector

  @@database_configuration = YAML.load_file('spec/config/database.yml')
  @@connection = nil
  
  def self.establish_connection(new = false)
  
    if ActiveRecord::Base.configurations.empty?
      ActiveRecord::Base.configurations = @@database_configuration
    end
    
    if new or @@connection.nil?
      @@connection = ActiveRecord::Base.establish_connection('test').connection
    end
    
    @@connection
  end

  def self.connection
    @@connection
  end

end
