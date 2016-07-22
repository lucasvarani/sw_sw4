class Admin::PortifolioImagesController < ApplicationController
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  
  before_filter :load_portifolio
  
  def index
    @portifolio_images = @portifolio.portifolio_images.all_active
  end

  def show
    @portifolio_image = @portifolio.portifolio_images.find(params[:id])
  end

  def new
    @portifolio_image = @portifolio.portifolio_images.build
  end

  def create
    @portifolio_image = @portifolio.portifolio_images.build(params[:portifolio_image])
    if @portifolio_image.save
      redirect_to admin_portifolio_portifolio_images_path(@portifolio, @portifolio_images), :notice => "Successfully created portifolio image."
    else
      render :action => 'new'
    end
  end

  def edit
    @portifolio_image = @portifolio.portifolio_images.find(params[:id])
  end

  def update
    @portifolio_image = @portifolio.portifolio_images.find(params[:id])
    if @portifolio_image.update_attributes(params[:portifolio_image])
      redirect_to admin_portifolio_portifolio_images_path(@portifolio, @portifolio_images), :notice  => "Successfully updated portifolio image."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @portifolio_image = @portifolio.portifolio_images.find(params[:id])
    @portifolio_image.newdestroy
    redirect_to admin_portifolio_portifolio_images_path(@portifolio), :notice => "Successfully destroyed portifolio image."
  end
  
  def load_portifolio
    @portifolio = Portifolio.find(params[:portifolio_id])
  end


end
