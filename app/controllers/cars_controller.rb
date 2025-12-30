class CarsController < ApplicationController
  def index
    @car = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @Car = Car.new
  end
end
