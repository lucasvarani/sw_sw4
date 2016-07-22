class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :file, :alt, :hint
  has_attached_file :file
  
end

