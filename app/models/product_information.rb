class ProductInformation < ActiveRecord::Base
  attr_accessible :attribute_title, :value, :active, :published, :product_id
  belongs_to :product
end
