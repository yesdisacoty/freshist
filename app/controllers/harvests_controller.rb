class HarvestsController < ApplicationController
    before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
    
    def index
        @harvests = Harvest.all
    end
    
    def new
        @harvest = Harvest.new
    end
    
    def create
        @harvest = Harvest.new(harvest_params)
        @harvest.user_id = current_user.id
        if @harvest.save
            redirect_to @harvest, notice: 'Harvest was successfully uploaded.'
        else
            render action: 'new'
        end
    end
    
    def update
    end
    
    def destroy
    end
    
    def show
        @harvest = Harvest.find(params[:id])
    end
    
    def edit
    end
    
    private
    
    def harvest_params
        params.require(:harvest).permit(:name, :description, :price, :harvest_photo) 
    end
end
