class HomesController < ApplicationController

  def contact
    @contact = Contact.new
  end
  
  def index
    @abouts = About.all
    @portifolios = Portifolio.all_active
  end

end
