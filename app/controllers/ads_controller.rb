class AdsController < ApplicationController
  before_action :set_magazine

  def index
    @ads = @magazine.ads
  end

  def show
    @ad = @magazine.ads.find(params[:id])
  end

  private

  def set_magazine
    @magazine = Magazine.find(params[:magazine_id])
  end
end
