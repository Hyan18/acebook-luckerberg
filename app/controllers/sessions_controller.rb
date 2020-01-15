class SessionsController < ApplicationController
  def new
  end

  def show
    session[:user_id] = nil
    redirect_to '/login'
  end

  def create
    @user = User.find_by_email(params[:session][:email])

    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/posts' 
    else
      flash.now.alert = "Invalid email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
  
end
