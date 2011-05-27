class StaticController < ApplicationController
	def index
		@name = "Index"

		respond_to do |format|
			format.html
		end
	end

	def about
		@name = "About"

		respond_to do |format|
			format.html
		end
	end
end
