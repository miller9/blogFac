class ArticlesController < ApplicationController

  # mostrar un form que pemita crear el article, con title por Default
  def new
    @article = Article.new
    @article.title = 'Demo' #title por Default
  end

  # guardar lo recibido del formulario
  def create
    @article = Article.create(title: params[:article][:title])
    render json: @article
  end

end
