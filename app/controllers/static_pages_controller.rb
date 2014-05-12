class StaticPagesController < ApplicationController

  def home
    @magazines = Magazine.all
  end

  def help
  end

  def form
  end
end
