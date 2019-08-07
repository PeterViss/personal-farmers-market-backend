class Post < ApplicationRecord
    belongs_to :user, -> {where role: :farmer}, class_name: 'User' 
    has_many :comments
end
