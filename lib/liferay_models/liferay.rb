require 'active_record'
require 'stringex'

module Liferay
  
  module Extensions
    
    def self.included(klass)
      klass.extend ClassMethods
    end
    
    module ClassMethods
  
      # Obie Fernandes solution for alias ActiveRecord column
    	# link: http://www.jroller.com/obie/entry/some_ar_sugar_4_u
    	#
      def alias_column(logical_name, column_name)
        define_method logical_name do
          @attributes[column_name.to_s]
        end
        
        # Created in this project to add setting functionality
        #
        define_method "#{logical_name}=" do |arg|
          @attributes[column_name.to_s] = arg
        end
      end
    
    end
    
    # Just a shortcut for <tt>Liferay::Counter.increment_id</tt>
    #--
    # Método de instância que recupera o proximo ID 
	  # da tabela de contagem do liferay
	  #
	  def increment_id
	    Liferay::Counter.increment_id
	  end
	
	  # Set the id of the liferay object if needed
	  #--
	  # Verifica se deve definir o id utilizando a tabela Counter do liferay.
	  # Caso seja necessário o id do liferay será definido.
	  #
	  def set_liferay_id
		  if self.id.nil? or self.id == 0
			  self.id = increment_id
		  end
		  self.id
	  end
		  
  end
  
  class Base < ActiveRecord::Base
    include Liferay::Extensions
    
    def save
		  set_liferay_id
		  super
	  end
	  
	  def save!
	    set_liferay_id
		  super
	  end
	  
  end
  
end

[
  'counter', 'class_name', 'company', 'role', 'user', 'contact', 'group', 'tag_asset', 'tag_entry', 'tag_vocabulary'
].each do |model|
  require File.join(File.dirname(__FILE__), 'models', "#{model}")
end
