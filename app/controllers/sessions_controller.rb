class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(current_user.id), notice: "logged in!"
		else
			flash.now.alert = "invalid login credentials"
			render :new
	  end
	end

	def destroy
		session[:user_id] = nil
		redirect_to users_path, notice: "logged out!"
	end

end
