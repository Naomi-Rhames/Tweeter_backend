class SessionsController < ApplicationController

    def login 
        user = User.find_by_username(params[:username])
       if user && user.authenticate(params[:password])
         render_user_token(user)
       else
        render json: {eroors: "Invalid Credentials!" }, status: :forbidden
       end
    end

    def autologin
        render_user_token(fetch_user)
    end

end
