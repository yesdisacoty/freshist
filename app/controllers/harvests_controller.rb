class HarvestsController < ApplicationController
    
    
    def index
        @harvests = Harvest.all
    end
    
    def new
        @harvest = Harvest.new
    end
    
    def create
    end
    
    def update
    end
    
    def destroy
    end
    
    def show
    end
    
    def edit
    end
    
    private
    
    def harvest_params
        params.require(:harvest).permit(:name, :description, :price, :harvest_photo) 
    end
end
