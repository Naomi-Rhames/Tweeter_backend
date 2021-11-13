class SessionsController < ApplicationController

    def login 
        user = User.find_by_username(params[:username])
       if user && user.authenticate(params[:password])
         render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
       else
        render json: {eroors: "Invalid Credentials!" }, status: :forbidden
       end
    end

    def current_user
        render json: {user: UserSerializer.new()}
    end

end
