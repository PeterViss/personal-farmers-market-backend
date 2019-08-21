class AvatarsController < ApplicationController
    def index 
        avatars = Avatar.all
        render json: avatars.to_json(avatar_show)
    end 

    def show
        avatar = Avatar.find(params[:id])
        render json: avatar.to_json(avatar_show)
    end

    def create
        avatar = Avatar.create(avatar_params)
        render json: avatar.to_json(avatar_show)
    end 

    def update
        avatar = Avatar.find_by(id: params[:id])
        avatar.update(avatar_params)
        render json: avatar.to_json(avatar_show)
    end 



    private 
    def avatar_show
        {
            :except => [
                :created_at, :updated_at
            ]
        }
    end 

    def avatar_params 
        params.require(:avatar).permit(
         :top,
         :accessories, 
         :hair_color,
         :hat_color,
         :facial_hair,   
         :facial_hair_color,
         :clothes,
         :color_fabric,
         :eyes,
         :eyebrow,
         :mouth,
         :skin,
         :user_id)
    end 

end
