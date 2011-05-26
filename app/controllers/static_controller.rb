class StaticController < ApplicationController
	def index
		respond_to do |format|
			format.html
		end
	end

	def faq
		respond_to do |format|
			format.html
		end
	end
end
