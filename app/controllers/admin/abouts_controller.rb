class Admin::AboutsController < ApplicationController
  access_control do
      allow :administrator, :all
  end
  layout "admin"
  def index
    @abouts = About.all
  end

  def show
    @about = About.find(params[:id])
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(params[:about])
    if @about.save
      redirect_to [:admin, @about], :notice => "Successfully created about."
    else
      render :action => 'new'
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update_attributes(params[:about])
      redirect_to [:admin, @about], :notice  => "Successfully updated about."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to admin_abouts_url, :notice => "Successfully destroyed about."
  end
end
