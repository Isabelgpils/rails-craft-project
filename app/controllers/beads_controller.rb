class BeadsController < ApplicationController
  before_action :set_bead, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /beads or /beads.json
  def index
    @q = Bead.ransack(params[:q])
    @beads= @q.result(distinct: true)
  end

  # GET /beads/1 or /beads/1.json
  def show
  end

  # GET /beads/new
  def new
    @bead = Bead.new
  end

  # GET /beads/1/edit
  def edit
  end


  # POST /beads or /beads.json
  def create
    @bead = Bead.new(bead_params)

    respond_to do |format|
      if @bead.save
        format.html { redirect_to bead_url(@bead), notice: "Bead was successfully created." }
        format.json { render :show, status: :created, location: @bead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beads/1 or /beads/1.json
  def update
    respond_to do |format|
      if @bead.update(bead_params)
        format.html { redirect_to bead_url(@bead), notice: "Bead was successfully updated." }
        format.json { render :show, status: :ok, location: @bead }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beads/1 or /beads/1.json
  def destroy
    @bead.destroy

    respond_to do |format|
      format.html { redirect_to beads_url, notice: "Bead was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bead
      @bead = Bead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bead_params
      params.require(:bead).permit(:number, :color, :pattern, :image, :stash, pattern_ids: [])
    end
end
