class Category < ApplicationRecord

validates_presence_of :name
validates_uniqueness_of :name
has_many :product_categories
has_many :products , through: :product_categories
end
