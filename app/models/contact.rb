class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :message, :published, :state, :business, :city 
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => :create } 
end
