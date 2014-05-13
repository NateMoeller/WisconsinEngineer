class ArticlesController < ApplicationController
  def new
    redirect_to(root_url) unless current_user && current_user.admin?
    @article = current_user.articles.build if signed_in?
  end
  
  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def show
	@article = Article.find(params[:id])
  end

  def destroy
  end
  
  private

    def article_params
      params.require(:article).permit(:title, :content, :author, :email, :user_id, :magazine_id)
    end
end
