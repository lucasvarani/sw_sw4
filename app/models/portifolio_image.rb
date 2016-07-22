class PortifolioImage < ActiveRecord::Base
  attr_accessible :title, :ordem, :active, :published, :image_product, :product_id, :image_portifolio
  has_attached_file :image_portifolio,
                    :styles => {
                      :medium => "245x186",
                      :thumb => "93x93#",
                      :large => "450x450>"
                     }
  belongs_to :portifolio
end
