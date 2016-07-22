class Item < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :image_item
  has_attached_file :image_item
  belongs_to :category
end
