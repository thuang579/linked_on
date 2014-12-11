class SessionController < ApplicationController
	def new
	end

	def create
		@user =User.find_by_email(params[:email])

		if @user && @user.authenticate(params[:password])
			session[:user_id] = user.user_id
			# new king of hash! like params has and flash hash
			redirect_to root_path, notice: "You'relogged in"
		else
			redirect_to '/login', notice: "You're not logged in"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login', notice: "You're not logged in"
	end

end
