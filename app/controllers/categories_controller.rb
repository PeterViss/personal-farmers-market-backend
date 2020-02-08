class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories.to_json(category_show)
  end

  def show
    category = Category.find(params[:id])
    render json: category.to_json(category_show)
  end

  private

  def category_show
    {
      :except =>
      [:created_at, :updated_at]
    }

  end
end
