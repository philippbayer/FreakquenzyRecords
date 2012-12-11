class NewsitemsController < ApplicationController
    def index
        @all_news = Newsitem.all
    end
end
