class Admin::ContactsController < ApplicationController  
  access_control do
      allow :administrator, :all
  end 
  layout "admin"  
  def index
    @contacts = Contact.all_active("id DESC")
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.newdestroy
    redirect_to admin_contacts_url, :notice => "Successfully destroyed contact."
  end
end
