class PortifoliosController < ApplicationController
  # before_filter :load_portifolio
  def show
    @portifolios = Portifolio.find(params[:id])
  end

  # def load_portifolio
  #   @portifolio = Portifolio.find(params[:portifolio_id])
  # end

end
