class Portifolio < ActiveRecord::Base
  attr_accessible :title, :description, :published, :active, :ordem, :image_portifolio
  has_attached_file :image_portifolio,
      :styles => {
        :thumb=> "50x50#",
        :small  => "150x150>",
        :medium => "250x250>" }
  has_many :portifolio_images
  
end