class PostsController < ApplicationController
    def index 
        posts = Post.all
        render json: posts.to_json(post_show)
    end 

    def show
        post = Post.find(params[:id])
        render json: post.to_json(post_show)
    end

    def create
        post = Post.create(post_params)
        render json: post.to_json(post_show)
    end 

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post.to_json(post_show)
    end 

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: post.to_json(post_show)
    end 

    private 

    def post_params 
        params.require(:post).permit(:content, :date, :location, :zip, :state, :attending, :user_id)
    end 

    def post_show
        {
            :except => [
                :created_at, :updated_at
            ],
            :include => {
                :comments => {
                    :except =>[:created_at, :updated_at]
                }
            }
        }
    end 
end
