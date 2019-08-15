
class FollowsController < ApplicationController
    def create
        follow = Follow.create(follow_params)
        render json: follow.to_json(follow_show)
    end 

    def destroy
        follow = Follow.find_by(follower_id: params[:follower_id], followee_id: params[:followee_id])
        follow.destroy
        render json: follow.to_json(follow_show)
    end 

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end 

    def follow_show
        
            {
                :except => [
                    :created_at, :updated_at
                ]
            }
        
    end

end
