class BiographiesController < ApplicationController
    def index 
        bios = Biography.all
        render json: bios.to_json(bio_show)
    end 

    def show
        bio = Biography.find(params[:id])
        render json: bio.to_json(bio_show)
    end

    def create
        bio = Biography.create(bio_params)
        render json: bio.to_json(bio_show)
    end 

    def update
        bio = Biography.find_by(id: params[:id])
        bio.update(bio_params)
        render json: bio.to_json(bio_show)
    end 



    private 
    def bio_show
        {
            :except => [
                :created_at, :updated_at
            ]
        }
    end 

    def bio_params 
        params.require(:biography).permit(:name, :description, :user_id)
    end 

end
