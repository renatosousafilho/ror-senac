require_relative './pessoa_crud'

class PessoaUI
    def initialize
    	@pessoa_crud = PessoaCrud.new
		@menu = <<-MENU
		1. Cadastrar
		2. Listar
		3. Pesquisar
		4. Sair
		MENU
    end

    def exibir_opcoes
    	puts @menu
    end

	def cadastrar
		puts "Digite um nome"
		nome = gets.chomp
		puts "Digite uma idade"
		idade = gets.chomp.to_i
		puts "Digite o endereco"
		endereco = gets.chomp
		puts "Digite o telefone"
		telefone = gets.chomp
		@pessoa_crud.cadastrar(nome, idade, endereco, telefone)
	end

	def listar
		pessoas = @pessoa_crud.listar
		pessoas.each { |pessoa| puts pessoa }
	end

	def pesquisar(nome)
		resultado = pessoa_crud.pesquisar_por_nome(nome)
		puts (resultado.nil?) ? "pessoa não cadastrada" : "pessoa cadastrada: #{resultado}"
	end
end






