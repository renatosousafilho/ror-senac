class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.assign_attributes(book_params)
    if @book.save
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :publication_year, :author_id)
  end
end
