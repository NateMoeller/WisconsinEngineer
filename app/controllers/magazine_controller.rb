class MagazineController < ApplicationController
  def new
    @magazine = Magazine.new
  end
end
