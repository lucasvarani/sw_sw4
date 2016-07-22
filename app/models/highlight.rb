class Highlight < ActiveRecord::Base
  attr_accessible :title, :subtitle, :publication_start, :publication_stop, :order, :active, :published, :image_highlight, :thumbnail, :thumbnail_shadow, :link
  has_attached_file :image_highlight
  has_attached_file :thumbnail
  has_attached_file :thumbnail_shadow
end
