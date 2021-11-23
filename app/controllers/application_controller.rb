class ApplicationController < ActionController::API

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
    end

    def fetch_user
        User.find(decoded_fetch_user_token["user_id"])
    end

    def logged_in
        User.find(decoded_token["user_id"])
    end

    private

    def fetch_user_token
        request.headers["Authorization"]
    end

    def decoded_fetch_user_token
        JWT.decode(fetch_user_token, ENV["JWT_SECRET"])[0]
    end
end
