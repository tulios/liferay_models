require 'helper/database_connector'
module Scripts
	# Nome do banco
	SCRIPTS_DIR = 'spec/db/'

	def self.load
    DatabaseConnector.establish_connection
    
		Dir.entries(SCRIPTS_DIR).sort.each do |file|
			if sql?(file)
				self.execute_script!(file)
			end
		end
	end

	private
	def self.sql?(file)
		return file =~ /.*\.sql$/
	end	

	def self.execute_script!(script)
		sql = ""
		File.open("#{SCRIPTS_DIR}#{script}", "r").each do |line|
			sql << line
		end

		Scripts.execute(sql)
	end
	
	# Executa o sql passado
	#
	def self.execute(sql)
		begin
			con = ActiveRecord::Base.connection()
			con.begin_db_transaction
			con.execute(sql)
			con.commit_db_transaction
			
			puts "-> Success!"
		rescue StandardError => e
			puts "-> Failure (#{e})"
		end
	end

end





























