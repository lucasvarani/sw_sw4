class Category < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :image_category, :father_id, :highlighted
  has_attached_file :image_category
  
  has_many :children, :class_name => "Category", :foreign_key => "father_id"
  belongs_to :father, :class_name => "Category"
  #has_and_belongs_to_many :products
  
  has_many :items
  
  def self.only_father_active(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true and father_id is null'],
        :order => order)
  end 
end
