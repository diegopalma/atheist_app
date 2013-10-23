class UsersController < ApplicationController
   def new
     @user = User.new
   end

  def show
    @user = User.find(params[:id])
    full_name = @user.name
    @first_name = full_name.split(' ').shift
    @peers = User.where(country: @user.country).count
    @number_of_users = User.all.count
  end

def create
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    flash[:success] = "Successful signed up!"
    redirect_to @user
  else
    render 'new'
  end
end

end

