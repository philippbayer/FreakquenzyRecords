class SongsController < ActionController::Base
    def upload
    end

    def index
    end

    def create
        @song = Song.new(params[:upload])
        respond_to do |format|
            if @song.save
                format.html {
                    render :json => [@song.to_jq_upload].to_json,
                    :content_type => 'text/html',
                    :layout => false
            }
            format.json { render json: [@song.to_jq_upload].to_json, status: :created, location: @song }
            else
                format.html { render action: "new" }
                format.json { render json: @song.errors, status: :unprocessable_entity }
            end
        end
    end
end
