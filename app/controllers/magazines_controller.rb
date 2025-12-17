class MagazinesController < ApplicationController
  def index
    @magazine = Magazine.all
  end
  def show
    @magazine = Magazine.find(params[:magazine_id])
  end
end
