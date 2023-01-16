class MetallicsController < ApplicationController
  before_action :set_metallic, only: %i[ show edit update destroy ]
  # before_action :authenticate_user!
  # GET /metallics or /metallics.json
  def index
    @metallics = Metallic.all
  end

  # GET /metallics/1 or /metallics/1.json
  def show
  end

  # GET /metallics/new
  def new
    @metallic = Metallic.new
  end

  # GET /metallics/1/edit
  def edit
  end

  # POST /metallics or /metallics.json
  def create
    @metallic = Metallic.new(metallic_params)

    respond_to do |format|
      if @metallic.save
        format.html { redirect_to metallic_url(@metallic), notice: "Metallic was successfully created." }
        format.json { render :show, status: :created, location: @metallic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @metallic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metallics/1 or /metallics/1.json
  def update
    respond_to do |format|
      if @metallic.update(metallic_params)
        format.html { redirect_to metallic_url(@metallic), notice: "Metallic was successfully updated." }
        format.json { render :show, status: :ok, location: @metallic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metallic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metallics/1 or /metallics/1.json
  def destroy
    @metallic.destroy

    respond_to do |format|
      format.html { redirect_to metallics_url, notice: "Metallic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metallic
      @metallic = Metallic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metallic_params
      params.require(:metallic).permit(:brand, :thread_type, :number, :color, :patterns, :image, :stash)
    end
end
