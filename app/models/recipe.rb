class Recipe < ApplicationRecord
  belongs_to :user # Macro gives us two methods, writer & reader
  belongs_to :category
  has_many :comments
  has_many :users, through: :comments # Gives us the writer method for the plural 
end
