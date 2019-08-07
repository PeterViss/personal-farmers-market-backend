class LoginController < ApplicationController
    def new 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {userinfo: user.to_json(user_show(user)), authenticated: "true"}
        else 
            render json: {message: "no way homay"}
    end 

    private 

    def user_show(user)
        if user.role == 'farmer'
        {
            :except => [
                :created_at, :updated_at, :password_digest
            ],
            :include => {
                :categories=>{
                    :except =>[:created_at, :updated_at]
                },
                :followers => {
                    :except =>[:created_at, :updated_at]
                },
                :posts => {
                    :except =>[:created_at, :updated_at]
                },
                :biography => {
                    :except =>[:created_at, :updated_at]
                }
            }
        }
        else
            {
            :except => [
                :created_at, :updated_at, :password_digest
            ],
            :include => {
                :followees => {
                    :except =>[:created_at, :updated_at]
                }
            }
        }
    end
end
