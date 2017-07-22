module BooksHelper
  def options_to_author
    Author.all.map {|author| [author.name, author.id] }
  end
end
