class UsersController < ApplicationController
    before_filter :admin_check, :only => [:admin]
    def index
        @users = User.all
    end

    def admin
    end

    private
    def admin_check
        # send back to index except user is admin and logged in
        unless current_user.try("admin?")
            flash[:alert] = "Hey"
            redirect_to root_path
        end
    end

end
