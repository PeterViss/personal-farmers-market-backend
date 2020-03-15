class CatFarm < ApplicationRecord
    belongs_to :user, -> {where role: :farmer}, class_name: 'User'
    belongs_to :category
end
