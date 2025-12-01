class ArticalesController < ApplicationController
  before_action :set_articale, only: %i[ show edit update destroy ]

  # GET /articales or /articales.json
  def index
    @articales = Articale.all
  end

  # GET /articales/1 or /articales/1.json
  def show
  end

  # GET /articales/new
  def new
    @articale = Articale.new
  end

  # GET /articales/1/edit
  def edit
  end

  # POST /articales or /articales.json
  def create
    @articale = Articale.new(articale_params)

    respond_to do |format|
      if @articale.save
        format.html { redirect_to @articale, notice: "Articale was successfully created." }
        format.json { render :show, status: :created, location: @articale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articales/1 or /articales/1.json
  def update
    respond_to do |format|
      if @articale.update(articale_params)
        format.html { redirect_to @articale, notice: "Articale was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @articale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articales/1 or /articales/1.json
  def destroy
    @articale.destroy!

    respond_to do |format|
      format.html { redirect_to articales_path, notice: "Articale was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articale
      @articale = Articale.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def articale_params
      params.fetch(:articale, {})
    end
end
