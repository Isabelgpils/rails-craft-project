class PatternsController < ApplicationController
  
  def index
    @patterns = Pattern.all
  end

  def show
    @pattern = Pattern.find(params[:id])
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)

    if @pattern.save
      redirect_to @pattern
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pattern = Pattern.find(params[:id])
  end

  def update
    @pattern = Pattern.find(params[:id])

    if @pattern.update(pattern_params)
      redirect_to @pattern
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def pattern_params
      params.require(:pattern).permit(:brand, :number, :size, :name, :image, :thumbnnail, :stash)
    end
end
