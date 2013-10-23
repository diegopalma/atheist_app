class UsersController < ApplicationController
 def new
   @user = User.new
 end

 def show
  @user = User.find(params[:id])

 end

def create
  @user = User.new(params[:user])
 if @user.save
      session[:user_id] = @user.id
      flash[:success] = "You are one of us now!"
      redirect_to @user
    else
      render 'new'
    end
  end

end

