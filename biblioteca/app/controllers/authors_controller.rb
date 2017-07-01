class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      # se conseguir salvar no banco
    else
      render :new
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :birthdate)
  end
end
