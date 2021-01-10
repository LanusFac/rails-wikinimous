class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :show, :destory]

  def index
    @articles = Article.all()
  end
  
  def show
  end

  def update

  end

  def edit
  end
  
  def destory
    find_article().destroy
    redirect_to articles_path
  end
  
  def update
    @article.update(article_params)
    redirect_to article_path(params[:id])
  end

  def new
    @article = Article.new()
  end
  
  def create
    Article.create(article_params)
    redirect_to articles_path
  end
  
  

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
  

  def find_article
    @article = Article.find(params[:id])
  end

end
