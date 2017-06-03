## Crie uma classe Book com os atributos title, publication_year

## Crie uma classe BookManager
- Defina um método construtor que inicialize o atributo @books
- Defina um método `#add` que receba um objeto Book como parametro e adicione na array @books
- Defina um método `#search` que receba um parametro title e que procure o livro de acordo com este parametro. Se encontrar o livro retorne o objeto, senão retorne o objeto `nil`
- Defina o método remover que recebo `title` como parametro e remova o mesmo caso ele exista.
- Defina o método #list_titles que retorne uma array APENAS com os titulos de cada livro.

## Crie uma classe BookUI 
- Defina o construtor que instancie um objeto de instância @book_manager
- Defina o método `#show-menu` que exiba o menu:
```
1 - Cadastrar
2 - Pesquisar
3 - Deletar
4 - Listar
5 - Sair
```

- Defina um método para cada uma das quatro operações abaixo levando em conta o objeto @book_manager que foi instanciado no construtor desta classe.


## Crie o arquivo `main.rb`
- Neste arquivo controle o fluxo da execução do programa usando as classes anteriores para que o usuário possa fazer todas as operações possíveis enquanto o mesmo não entrar com a opção `5`. 

