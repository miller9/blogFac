class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id]) # using the same value defined on GET route. (:id) ('id')
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id]) # using the same value defined on GET route. (:id) ('id')
    @article.update(title: params[:article][:title], content: params[:article][:content])

    redirect_to @article
  end

  # mostrar un form que pemita crear el article, con title por Default
  def new
    @article = Article.new
    @article.title = 'Demo' #title por Default
  end

  # guardar lo recibido del formulario
  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content])
    render json: @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

end
