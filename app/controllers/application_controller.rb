class ApplicationController < ActionController::API

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
    end


    private

    def current_user_token
        request.headers['Authorization']
    end

    def decode_current_user_token
        JWT.decode(current_user_token, ENV["JWT_SECRET"])
    end
end
