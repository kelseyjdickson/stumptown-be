class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def login 
        
        user = User.find_by(username: params[:usernameInput][:password])
        if user
            render json: user
        else
            render json:{error:"Sorry wrong password!"}
        end
    end
end
