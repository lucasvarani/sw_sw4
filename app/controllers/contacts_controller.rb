class ContactsController < ApplicationController
 
  def new
    @contact = Contact.new
    render :layout => "interno"
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notifier.send_contact(@contact).deliver
      Notifier.send_contact_user(@contact).deliver
      redirect_to contact_path(@contact)
    end
  end

  def show
    render :layout => "interno"
  end
end
