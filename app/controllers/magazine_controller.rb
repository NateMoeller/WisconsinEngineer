class MagazineController < ApplicationController
  def new
    redirect_to(root_url) unless current_user && current_user.admin?
    @magazine = Magazine.new
  end
end
