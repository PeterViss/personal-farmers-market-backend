# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  enum role: { farmer: 0, customer: 1 }

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_one :avatar, dependent: :destroy

  # for the Customer
  has_many :attends, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :posts, through: :attends
  # for the Farmer
  has_many :posts, dependent: :destroy
  has_one :biography, dependent: :destroy
  has_many :cat_farms, dependent: :destroy
  has_many :categories, through: :posts
  accepts_nested_attributes_for :biography

  # Follows
  has_many :follows, dependent: :destroy
  has_many :follower_relationships, foreign_key: :followee_id, class_name: 'Follow', dependent: :nullify, inverse_of: :followee_relationships
  has_many :followees, through: :follower_relationships, source: :follower

  has_many :followee_relationships, foreign_key: :follower_id, class_name: 'Follow', dependent: :nullify, inverse_of: :follower_relationships
  has_many :followers, through: :followee_relationships, source: :followee

  after_initialize do
    new_record? && role || :customer
  end
end
