class DmcsController < ApplicationController
  before_action :set_dmc, only: %i[ show edit update destroy ]

  # GET /dmcs or /dmcs.json
  def index
    @dmcs = Dmc.all
  end

  # GET /dmcs/1 or /dmcs/1.json
  def show
  end

  # GET /dmcs/new
  def new
    @dmc = Dmc.new
  end

  # GET /dmcs/1/edit
  def edit
  end

  # POST /dmcs or /dmcs.json
  def create
    @dmc = Dmc.new(dmc_params)

    respond_to do |format|
      if @dmc.save
        format.html { redirect_to dmc_url(@dmc), notice: "Dmc was successfully created." }
        format.json { render :show, status: :created, location: @dmc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dmc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dmcs/1 or /dmcs/1.json
  def update
    respond_to do |format|
      if @dmc.update(dmc_params)
        format.html { redirect_to dmc_url(@dmc), notice: "Dmc was successfully updated." }
        format.json { render :show, status: :ok, location: @dmc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dmc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dmcs/1 or /dmcs/1.json
  def destroy
    @dmc.destroy

    respond_to do |format|
      format.html { redirect_to dmcs_url, notice: "Dmc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmc
      @dmc = Dmc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dmc_params
      params.require(:dmc).permit(:number, :color, :rgb_value, :image, :stash)
    end
end
