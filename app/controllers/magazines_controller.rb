class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.all
    # @magazine = Magazine.find(params[:id])
  end

  def preview
    @magazine = Magazine.all
  end
end
