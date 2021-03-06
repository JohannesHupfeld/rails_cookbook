class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe    

  validates :content, presence: true 
  validates :post, uniqueness: {scope: :user_id, message: "may only have one comment per user"}
end
