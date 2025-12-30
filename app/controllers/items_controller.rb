class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end
  def welcome
  end
  def update
    @item = Item.find(params[:id])
    if @item.update(item_param)
      redirect_to(@item)
    else
      render "edit"
    end
  end
  def edit
    @item = Item.find(params[:id])
  end
  private
  def item_param
    params.require(:item).permit(:name, :description)
  end
end
