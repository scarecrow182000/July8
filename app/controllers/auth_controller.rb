class AuthController < ApplicationController

  def login
  end

  def 

  def verify
    if params[:password] == "StlCards06"
      session[:admin] = true
      redirect_to show_path
    else
      @message = "Password is incorrect, please try again."
      render :login
    end
  end

end
