class BandController < ApplicationController

	def index
		# showing all bands
		@bands = Band.find(:all)
		@band_users = BandUser.find(:all)
		@name = "All bands"

		respond_to do |format|
			format.html
		end
	end

	def show
		# showing a single band's page
		
		@band = Band.find(params[:id])
		@band_users = BandUser.find(:all)
        @name = @band.name

		respond_to do |format|
			format.html
		end
	end

end
