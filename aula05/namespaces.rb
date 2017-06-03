module Database
	class Base
		def executar
			puts "Salvar no banco"
		end
	end

	class Version
		def version
			"0.0.2"
		end
	end
end

module View
	class Base
		def executar
			puts "Criar páginas HTML"
		end
	end

	class Version
		def version
			"0.0.1"
		end
	end
end

db_base = Database::Base.new
db_base.executar
db_version = Database::Version.new
puts db_version.version


view_base = View::Base.new
view_base.executar
view_version = View::Version.new
puts view_version.version

