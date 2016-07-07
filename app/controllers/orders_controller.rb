class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    def new
        @order = Order.new
        @harvest = Harvest.find(params[:harvest_id])
    end
    
    def create
        @order = Order.new(order_params)
        @harvest = Harvest.find(params[:harvest_id])
        @seller = @harvest.user
        
        @order.harvest_id = @harvest.id
        @order.buyer_id = current_user.id
        @order.seller_id = @seller.id
        
        respond_to do |format|
          if @order.save
            format.html { redirect_to root_url, notice: 'Order was successfully created.' }
            format.json { render action: 'show', status: :created, location: @order }
          else
            format.html { render action: 'new' }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def index
        
    end

    def sales
        @orders = Order.all.where(seller: current_user).order("created_at DESC")
    end
    
    def purchases
        @orders = Order.all.where(buyer: current_user).order("created_at DESC") 
    end
    
    private
    
    def set_order
      @order = Order.find(params[:id])
    end    
    
    def order_params
       params.require(:order)
    end
end
