class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    # @magazine = Magazine.all
    # @magazine = Magazine.find(params[:id])
    render params[:magazines]
  rescue ActionView::MissingTemplate
    render file: "public/404.html", status: :not_found
  end

  def preview
    @magazine = Magazine.all
  end
  def new
  end
  def unknown
      render plain: "Unknown magazine", status: :not_found
  end
end
