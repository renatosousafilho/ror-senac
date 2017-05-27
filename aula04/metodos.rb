require_relative './pessoa_crud'

pessoa_crud = PessoaCrud.new

menu = <<MENU
1. Cadastrar
2. Listar
3. Pesquisar
4. Sair
MENU

loop do
	puts menu
	opcao = gets.chomp.to_i

	case opcao
	when 1
		pessoa_crud.cadastrar
	when 2
		pessoa_crud.listar
	when 3
		nome = gets.chomp
		resultado = pessoa_crud.pesquisar_por_nome(nome)
		puts (resultado.nil?) ? "pessoa não cadastrada" : "pessoa cadastrada: #{resultado}"
	else
		"opcao invalida"
	end
	break if opcao==4
end	




