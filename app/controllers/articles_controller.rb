class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id]) # using the same value defined on GET route. (:id) ('id')
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

end
