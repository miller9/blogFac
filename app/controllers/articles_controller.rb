class ArticlesController < ApplicationController
  before_action :find_article, except: [:new, :create, :index, :from_author]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    @article.update(title: params[:article][:title], content: params[:article][:content])

    redirect_to @article
  end

  # mostrar un form que pemita crear el article, con title por Default
  def new
    @article = Article.new
  end

  # guardar lo recibido del formulario
  def create
    # @article = Article.create(title: params[:article][:title],
    #                          content: params[:article][:content],
    #                         user: current_user) #2a forma
    @article = current_user.articles.create(title: params[:article][:title],
                              content: params[:article][:content]) # forma mas comun (usando la asociacion)
    render json: @article
  end

  def destroy
    @article.destroy

    redirect_to root_path
  end

  def from_author
    @user = User.find(params[:user_id])
  end

  def find_article
    @article = Article.find(params[:id]) # using the same value defined on GET route. (:id) ('id')
  end

end
