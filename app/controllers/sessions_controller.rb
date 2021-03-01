class SessionsController < ApplicationController
  #  Line to call methods from helper modules
  protect_from_forgery       
  include SessionsHelper

  def create 
    user = User.find_by(email: params[:session][:email].downcase)
    if (user && user.authenticate(params[:session][:password]))
      flash.now[:login] = 'Succesfully log In'
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination' #Not quite right!
      render 'new'
    end
  end
end
