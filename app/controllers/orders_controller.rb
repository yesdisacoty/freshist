class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    def new
        @order = Order.new
        @harvest = Harvest.find(params[:harvest_id])
    end
    
    def create
        @order = Order.new(order_params)
        @order.buyer_id = current_user.id
        @harvest = Harvest.find(params[:harvest_id])
        @seller = @harvest.user
        @order.harvest_id = @harvest.id
        @order.seller_id = @seller.id
        
        if @order.save
           respond_to do |format|
               format.html {redirect_to root_path, notice: "Order successfully processed"} 
           end
        else
            render 'new'
        end
        
    end
    
    def destroy
        
    end
    
    def edit
        
    end
    
    def index
        
    end
    
    def show
        
    end
    
    def update
        
    end
    
end
