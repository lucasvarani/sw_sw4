class Product < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :brand, :style, :code
  
  has_many :product_images
  has_many :product_informations
end
