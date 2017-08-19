class Product < ApplicationRecord
 validates_presence_of :summary
 validates_presence_of :description

  has_many :product_categories
  has_many :categories, through: :product_categories
   belongs_to :user
end
