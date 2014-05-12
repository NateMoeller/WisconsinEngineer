class MagazinesController < ApplicationController
  def new
    redirect_to(root_url) unless current_user && current_user.admin?
    @magazine = Magazine.new
  end
  
  def create
    @magazine = Magazine.new(magazine_params)
    if @magazine.save
      flash[:success] = "Magazine created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def show
    @magazine = Magazine.find(params[:id])
	@articles = @magazine.articles(page: params[:page]) #pagenate here?
  end
  
  private

    def magazine_params
      params.require(:magazine).permit(:name, :issue)
    end
end
