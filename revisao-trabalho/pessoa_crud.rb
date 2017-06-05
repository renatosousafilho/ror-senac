require_relative './pessoa'

class PessoaCrud
	def initialize
		@pessoas = []
	end

	def cadastrar(nome, idade, endereco, telefone)
		pessoa = Pessoa.new(nome, idade, endereco, telefone)
		@pessoas << pessoa
	end

	def listar
		@pessoas
	end

	def pesquisar_por_nome(nome)
		@pessoas.each do |pessoa|
			return pessoa if pessoa.nome == nome
		end
		return nil
	end
end

