class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.authenticate(params[:session][:email],params[:session][:password])
    if @user != nil
      flash[:success] = "Successfully logged in"
      session[:id] = @user.id
      redirect_to products_path
    else
      flash[:danger] = "Wrong email or credentials"
      render 'new'
    end
  end

  def destroy
    session[:id] = nil
    redirect_to products_path
  end

end
