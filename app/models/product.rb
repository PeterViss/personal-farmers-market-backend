class Product < ApplicationRecord
    belongs_to :user, -> {where role: :farmer}, class_name: 'User' 
end
