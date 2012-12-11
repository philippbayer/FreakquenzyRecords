class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def admin
        admin_check
    end

    private
    def admin_check
        # send back to index except user is admin and logged in
        unless current_user.try("admin?")
            redirect_to root_path
        end
    end

end
