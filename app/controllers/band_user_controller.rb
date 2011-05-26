class BandUserController < ApplicationController
	def index
		respond_to do |format|
			format.html
			format.xml # just for the hell of it
		end
	end
end
