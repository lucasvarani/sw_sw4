class Article < ActiveRecord::Base
  attr_accessible :title, :subtitle, :description, :order, :active, :published, :tag_list, :image_article
  acts_as_taggable
  has_attached_file :image_article
  
  def self.search(search)
    if search
      find(:all, :conditions => ['published =  true and active = true and (title LIKE ? or subtitle LIKE ? or description LIKE ?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end
end
