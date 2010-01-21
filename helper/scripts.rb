require 'helper/database_connector'
module Scripts
	# Nome do banco
	SCRIPTS_DIR = 'spec/db/'

	def self.load
		puts "Dropando schema e recriando tabelas"
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
		puts "Executando: #{script}"
		
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
			
			puts "-> Sql executado com sucesso!"
		rescue StandardError => e
			puts "-> Falha ao executar sql. (#{e})"
		end
	end

end




























