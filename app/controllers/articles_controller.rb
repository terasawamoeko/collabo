class ArticlesController < ApplicationController
  def new
  	@article = Article.new
 end
    def create
  	article = Article.new(articles_params)
  	article.save
  	redirect_to article_path(article.id)
  end

  def index
  	@articles = Article.all
  	@article = Article.new
  end
  def show
  	@article = Article.find(params[:id])
  end
  def edit
        @article = Article.find(params[:id])
  end
  def update
  	article = Article.find(params[:id])
    article.update(article_params)
    redirect_to article_path(article.id)
  end
  def destroy
  	article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end
  private
  def articles_params
  	params.require(:article).permit(:title, :body, :weather, :image)
  end
  
end