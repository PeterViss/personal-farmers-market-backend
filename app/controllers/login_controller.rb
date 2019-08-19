require 'pry'
class LoginController < ApplicationController
    def new 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {"user_id": user.id}
            token = encode(payload)
            render json: {
                userinfo: user.to_json(user_show(user)), 
                authenticated: "true",
                token: token
            }
        else 
            render json: {message: "Username or Password are incorrect"}
        end
    end 

    def create
        @user = User.new(user_params)
       # binding.pry
        if @user.valid?
            @user.save
            
            render json: {message:"User create.",userinfo:@user , authenticated:"true"}
        else
            render json: {message:"There was a problem",authenticated:"false"}
        end
    end
    private 

    def user_params
        params.require(:user).permit(:username, :password, :role)
    end

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
                    :except =>[:password_digest, :created_at, :updated_at]
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
                    :except =>[:password_digest, :created_at, :updated_at],
                    :include => {
                        :posts => {
                            :except =>[:created_at, :updated_at],
                            :include => {:category => {:except => [:created_at, :updated_at]}}
                        },
                        :biography => {
                            :except =>[:created_at, :updated_at]
                        }, 
                        :categories => {
                            :except =>[:created_at, :updated_at]
                        },
                        :followers => {
                            :except =>[:created_at, :updated_at, :password_digest]
                        }
                    }
                }
            }
        }
    end
    end 
end
