class User < ApplicationRecord
  has_secure_password
    enum role: {farmer: 0, customer: 1}
  
    
    
    #for the Customer 
    has_many :comments
    
    #for the Farmer 
    has_many :posts
    has_many :products
    has_one :biography
    has_many :cat_farms
    has_many :categories, through: :posts

    #Follows
    has_many :follows
    has_many :follower_relationships, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followees, through: :follower_relationships, source: :follower

    
    has_many :followee_relationships, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followers, through: :followee_relationships, source: :followee


   
  

    after_initialize do
        if self.new_record?
          self.role ||= :customer
        end
      end
end
