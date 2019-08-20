class Post < ApplicationRecord
    belongs_to :user, -> {where role: :farmer}, class_name: 'User' 
    belongs_to :category
    belongs_to :state
    has_many :comments
    has_many :attends
    has_many :users, -> {where role: :customer}, class_name: 'User',  through: :attends
end
