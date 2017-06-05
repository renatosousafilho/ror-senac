require_relative './pessoa_ui'

pessoa_ui = PessoaUI.new
loop do
	pessoa_ui.exibir_opcoes
	opcao = gets.chomp.to_i

	case opcao
	when 1
		pessoa_ui.cadastrar
	when 2
		pessoa_ui.listar
	when 3
		nome = gets.chomp
		pessoa_ui.pesquisar(nome)
	else
		"opcao invalida"
	end
	break if opcao==4
end	