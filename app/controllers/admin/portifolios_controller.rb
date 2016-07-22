class Admin::PortifoliosController < ApplicationController
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  
  def index
    @portifolios = Portifolio.all_active
  end

  def show
    @portifolio = Portifolio.find(params[:id])
  end

  def new
    @portifolio = Portifolio.new
  end

  def create
    @portifolio = Portifolio.new(params[:portifolio])
    if @portifolio.save
      redirect_to [:admin, @portifolio], :notice => "Successfully created portifolio."
    else
      render :action => 'new'
    end
  end

  def edit
    @portifolio = Portifolio.find(params[:id])
  end

  def update
    @portifolio = About.find(params[:id])
    if @portifolio.update_attributes(params[:portifolio])
      redirect_to [:admin, @portifolio], :notice  => "Successfully updated portifolio."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @portifolio = Portifolio.find(params[:id])
    @portifolio.newdestroy
    redirect_to admin_portifolios_path(@product), :notice => "Successfully destroyed portifolio."
  end

end
