class Customer < ActiveRecord::Base
  attr_accessible :title, :description, :published, :active, :order, :company_logo, :services_performed
  has_attached_file :company_logo
end
