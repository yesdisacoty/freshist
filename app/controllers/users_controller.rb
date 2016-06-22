class HarvestsController < ApplicationController
    before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
    before_filter :check_user, only: [:edit, :update, :destroy]
    
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        
        if @user.save
            # Deliver the signup email
            ContactMailer.send_signup_email(@user).deliver
            redirect_to(@user, :notice => 'User created')
        else
            redirect_to new_user_path, notice: "Try again, pal."
        end
    end
    
    def update
    end
    
    def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to users_url
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def edit
    end
    
    private
    
    def user_params
        
    end
end