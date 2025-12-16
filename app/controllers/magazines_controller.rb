class MagazinesController < ApplicationController
  def index
    @magazine = Magazine.all
  end
  def show
  end
end
