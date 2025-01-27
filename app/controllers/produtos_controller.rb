class ProdutosController < ApplicationController
  before_action :set_produto, only: %i[show edit update destroy]
  allow_unauthenticated_access only: %i[index]
  protect_from_forgery except: :index


  def index
    if params[:pesquisar].present?
      @produtos = Produto.where("nome LIKE ?", "%#{params[:pesquisar]}%")
    else
      @produtos = Produto.order(:nome)
    end

    respond_to do |format|
      format.html
      format.js { render partial: "produtos_lista", locals: { produtos: @produtos } }
    end
  end

  def show
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    if @produto.save
      redirect_to @produto, notice: 'Produto criado com sucesso!'
    else
      render :new, alert: 'Erro ao criar produto!'
    end
  end

  def edit
  end

  def update
    if @produto.update(produto_params)
      redirect_to @produto, notice: 'Produto atualizado com sucesso!'
    else
      render :edit, alert: 'Erro ao atualizar produto!'
    end
  end

  def destroy
    @produto.destroy
    redirect_to produtos_path, notice: 'Produto deletado com sucesso!'
  end



  private
    def produto_params
      params.require(:produto).permit(:nome, :corredor, :em_estoque)
    end

    def set_produto
      @produto = Produto.find(params[:id])
    end

end
