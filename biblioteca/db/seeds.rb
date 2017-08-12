# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# author1 = Author.create name: "J.R.R. Tolkien"
# author2 = Author.create name: "J.K. Rowling"
#
# # Cadastrando livros do primeiro autor
# author1.books.create title: "O Senhor dos Aneis - A Sociedade do Anel", publication_year: 1941
# author1.books.create title: "O Senhor dos Aneis - As Duas Torres", publication_year: 1941
# author1.books.create title: "O Senhor dos Aneis - O Retorno do Rei", publication_year: 1941
#
# # Cadastrando livros do segundo autor
# author2.books.create title: "Harry Pottter 1"
# author2.books.create title: "Harry Pottter 2"
# author2.books.create title: "Harry Pottter 3"
# author2.books.create title: "Harry Pottter 4"
# author2.books.create title: "Harry Pottter 5"
# author2.books.create title: "Harry Pottter 6"
# author2.books.create title: "Harry Pottter 7"

admin_user = User.create(
  email: 'admin@biblioteca.com',
  password: 'asdf1234',
  role: 'admin'
)

visitante_user = User.create(
  email: 'visitante@biblioteca.com',
  password: 'asdf1234',
  role: 'visitante'
)
