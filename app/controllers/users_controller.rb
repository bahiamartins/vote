class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  
  def create 
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "POST save message"
  		#UserMailer.welcome_email(@user).deliver
  		redirect_to '/success'
  	else 
  		render 'new'
  	end
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :phone)
  end
  
  def index 
  	@users = User.all 
  end
end