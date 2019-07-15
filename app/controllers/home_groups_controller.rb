class HomeGroupsController < ApplicationController
  def index
    @id = params[:id]
    @page = params[:page]
    # render 'app_group/index'
    @location = 'Bali, Indonesia'
  end
end
