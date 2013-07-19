class SessionController < ApplicationController
  def new
  end

  def create
  	user = User.authenitcate(params[:email], params[:password])

  	if user
  		session[:user_id] = user.user_id
  		redirect_to root_url
  	else
  		render :new
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url
  end
end
