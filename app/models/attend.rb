class Attend < ApplicationRecord
    belongs_to :post
    belongs_to :user, -> {where role: :customer}, class_name: 'User'
end
