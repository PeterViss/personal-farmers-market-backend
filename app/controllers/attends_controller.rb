class AttendsController < ApplicationController
    def index 
        attends = Attend.all
        render json: attends.to_json(attend_show)
    end 

    def show
        attend = Attend.find(params[:id])
        render json: attend.to_json(attend_show)
    end

    def create
        attend = Attend.create(attend_params)
        render json: attend.to_json(attend_show)
    end 


    def destroy
        attend = Attend.find(params[:id])
        attend.destroy
        render json: attend.to_json(attend_show)
    end 

    private 

    def attend_params
        params.require(:attend).permit(:user_id, :post_id) 
    end 

    def attend_show
        {
            :except => [:created_at, :updated_at]
        }
    end 
end
