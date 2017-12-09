class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #need to direct to test taking portion
      login!(@user)
      redirect_to "/questions/1"
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
    if @user
      render :show
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
  
end
