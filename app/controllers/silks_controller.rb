class SilksController < ApplicationController
  before_action :set_silk, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /silks or /silks.json
  def index
    @q = Silk.ransack(params[:q])
    @silks= @q.result(distinct: true)
  end

  # GET /silks/1 or /silks/1.json
  def show
  end

  # GET /silks/new
  def new
    @silk = Silk.new
  end

  # GET /silks/1/edit
  def edit
  end

  # POST /silks or /silks.json
  def create
    @silk = Silk.new(silk_params)

    respond_to do |format|
      if @silk.save
        format.html { redirect_to silk_url(@silk), notice: "Silk was successfully created." }
        format.json { render :show, status: :created, location: @silk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @silk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /silks/1 or /silks/1.json
  def update
    respond_to do |format|
      if @silk.update(silk_params)
        format.html { redirect_to silk_url(@silk), notice: "Silk was successfully updated." }
        format.json { render :show, status: :ok, location: @silk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @silk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silks/1 or /silks/1.json
  def destroy
    @silk.destroy

    respond_to do |format|
      format.html { redirect_to silks_url, notice: "Silk was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def set gloriana
    @gloriana = @silks.where(brand: "Gloriana")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silk
      @silk = Silk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def silk_params
      params.require(:silk).permit(:brand, :thread_type, :number, :color, :pattern, :image, :stash)
    end
end
