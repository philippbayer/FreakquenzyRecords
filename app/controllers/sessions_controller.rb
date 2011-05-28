class SessionsController < ApplicationController

	def new
		@title = "Sign in"
	end

	def create
		reset_session # so attackers can't use session fixation
		user = User.authenticate(params[:session][:email],
								 params[:session][:password])

		if user.nil?
			flash.now[:error] = "Invalid email/password combination"
			@title = "Sign in"
			render 'new'
		else
			sign_in user
			redirect_to root_path
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
