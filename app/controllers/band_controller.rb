class BandController < ApplicationController

	def index
		@bands = Band.find(:all)

		# now find all users associated with each band


		respond_to do |format|
			format.html
		end
	end

end
