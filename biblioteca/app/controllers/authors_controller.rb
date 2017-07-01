class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show;end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to authors_path, notice: "Autor cadastrado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @author.assign_attributes(author_params)

    if @author.save
      redirect_to authors_path, notice: "Autor foi Atualizado com sucesso"
    else
      render :edit
    end
  end

  def destroy
    begin
      @author.delete
      redirect_to authors_path, notice: "Autor removido com sucesso"
    rescue
      redirect_to authors_path, notice: "Autor não pode ser removido"
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :birthdate)
  end
end
