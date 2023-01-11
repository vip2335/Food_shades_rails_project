require 'bcrypt'
class LoginsController < ApplicationController
  skip_before_action :authorized
    def new
    end 
    def create
        user = User.find_by(user_email: params[:user_email])
        if user && user.authenticate(params[:password])
            sessions[:user_id] = user.id 
            redirect_to '/restaurants'
        end
      end

      def destroy
        session.delete(:current_user_id)
        @_current_user = nil
        redirect_to root_url
      end
end
