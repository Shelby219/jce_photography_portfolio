class Post < ApplicationRecord
    belongs_to :category
    validates :title, :content, :category_id, presence: true 
    has_many :line_items, inverse_of: :order
    has_one_attached :image  
    
end

  

