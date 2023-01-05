class BeadsController < ApplicationController
    def index
        @beads = Bead.all
    end

    def show
    end
    
    def create
        @pattern = Pattern.find(params[:pattern_id])
        @bead = @pattern.beads.create(bead_params)
        redirect_to pattern_path(@pattern)
    end
    
    private
    def bead_params
        params.require(:bead).permit(:number, :pattern, :stash)
    end

end
