class Category < ApplicationRecord
    has_many :cat_farms
    has_many :users, through: :cat_farms
end
