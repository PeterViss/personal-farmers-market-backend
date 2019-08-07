class UsersController < ApplicationController
    def show
     user = User.find(params[:id])
        render json: user.to_json(user_show(user))
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
                },
                :comments => {
                    :except =>[:created_at, :updated_at]
                }
            }
        }
    end
    end 
end
