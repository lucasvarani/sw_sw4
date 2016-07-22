class Business < ActiveRecord::Base
  attr_accessible :description, :quote, :mission, :view, :values, :published, :image_business, :quote_author
  has_attached_file :image_business 
end
