class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render file: "public/404.html", status: :not_found
  end

  def preview
    # use a plural name for the collection to avoid confusion in the view
    @magazines = Magazine.all
  end

  def new
  end

  def unknown
    render plain: "Unknown magazine", status: :not_found
  end
end
