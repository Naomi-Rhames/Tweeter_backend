class UsersController < ApplicationController

    def create
     user = User.new(user_params)
     if user.save
      render_user_token(user)
     else
        render json: {error: user.errors.full_messages},  status: :unprocessable_entity
     end
    end


    private 

    def user_params
      params.permit(:email, :username, :bio, :password)
    end

end
