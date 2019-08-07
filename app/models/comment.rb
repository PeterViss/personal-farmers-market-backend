class Comment < ApplicationRecord
    belongs_to :user, -> {where role: :customer}, class_name: 'User'
    belongs_to :post 
end
