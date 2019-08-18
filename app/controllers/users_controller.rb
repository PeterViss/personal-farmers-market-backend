require 'pry'
class UsersController < ApplicationController

    def farmers
        users = User.all
         farmers = users.select do |user|
           if user.role == 'farmer'
                user
           else 

           end 
        
            end 
            
            render json: farmers.to_json(farmer_users)
    end 
    

    def show
     user = User.find(params[:id])
        render json: user.to_json(user_show(user))
    end 


    def posts
        user = User.find(params[:id])
        user.posts 
        render json: user.posts.to_json(post_show)
    end 



    private 

    def post_show
        {
            :except => [
                :created_at, :updated_at
            ],
            :include => {
                :comments => {
                    :except =>[:created_at, :updated_at]
                },
                :state => {
                    :except =>[:created_at, :updated_at]
                }
            }
        }
    end 

    def farmer_users
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
                            :except =>[:created_at, :updated_at]
                        },
                        :biography => {
                            :except =>[:created_at, :updated_at]
                        }
                    }
                }
            }
        }
    end
    end 
end
