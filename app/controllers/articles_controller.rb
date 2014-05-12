class ArticlesController < ApplicationController
  #before_action :signed_in_user, only: [:new, :show, :create, :destroy]
  def new
    @article = current_user.articles.build if signed_in?
  end
  
  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def show
	@article = Article.find(params[:id])
  end

  def destroy
  end
  
  private

    def article_params
      params.require(:article).permit(:title, :content, :author, :email, :user_id)
    end
end
