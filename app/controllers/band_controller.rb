class BandController < ApplicationController

	def index
		@bands = Band.find(:all)

		respond_to do |format|
			format.html
			format.xml
		end
	end

end
