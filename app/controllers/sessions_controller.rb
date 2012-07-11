class SessionsController < ApplicationController
  def new
	if self.current_user
		redirect_to user_path(current_user)
	else
		
	end
  end

  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		sign_in user
		redirect_back_or user
	else
		flash.now[:error] = "Invalid email/password combination"
		render "new"
	end
  end

  def destroy
		sign_out
		redirect_to root_path
  end
end
