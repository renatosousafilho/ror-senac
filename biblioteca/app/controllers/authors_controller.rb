class AuthorsController < ApplicationController
  authorize_resource class: :authors
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @authors = Author.where("name like '%#{params[:search]}%'").paginate(page: params[:page], per_page: 2)
    else
      @authors = Author.paginate(page: params[:page], per_page: 2)
    end
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
