class SessionsController < ApplicationController

    def login 
        user = User.find_by_username(params[:username])
       if user && user.authenticate(params[:password])
        render json: user
       else
        render json: {eroors: "Invalid Credentials!" },status: :forbidden
       end
    end

end
