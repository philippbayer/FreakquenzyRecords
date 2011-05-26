class UserController < ApplicationController

	def index
		# showing all users
		@users = User.find(:all)
		@band_users = BandUser.find(:all)

		respond_to do |format|
			format.html
			format.xml # just for the hell of it
		end
	end

	def show
		# showing a single user's page
		@user = User.find(params[:id])
		@band_users = BandUser.find(:all)

		respond_to do |format|
			format.html
		end
	end
end
