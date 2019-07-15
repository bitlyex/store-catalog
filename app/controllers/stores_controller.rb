class StoresController < ApplicationController
  before_action :user_signed_in?
  layout 'admin'

  def new
    @store = Store.new
    render layout: false
  end

  def create
    @store = Store.create(resources_params)
    @store.save
    redirect_to stores_path
    flash[:notice] = 'Store has been create!'
  end

  def edit
    id = params[:id]
    @store = Store.find(id)
    render layout: false
  end

  def update
    @store = Store.find(params[:id])
    @store.update(resources_params)
    redirect_to stores_path
    flash[:notice] = 'Store has been update!'
    render layout: false
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
    flash[:notice] = 'Store has been delete!'
  end

  def index
    @location = 'Bogor, Indonesia'
    @store = Store.all
  end

  def show
    id = params[:id]
    @store = Store.find(id)
    render layout: false
  end

  private

  def resources_params
    params.require(:store).permit(:name_store, :address, :subdistrict, :province, :country, :account_id, :payment_id)
  end
end
