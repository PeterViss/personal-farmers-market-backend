class Post < ApplicationRecord
    belongs_to :user, -> {where role: :farmer}, class_name: 'User' 
    belongs_to :category
    has_many :comments
end
