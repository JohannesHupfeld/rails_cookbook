class User < ApplicationRecord
  has_many :recipes
  has_many :comments
  has_many :categories, through: :recipes
  has_many :commented_recipes, through: :comments
end
