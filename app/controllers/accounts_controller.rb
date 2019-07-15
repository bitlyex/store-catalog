class AccountsController < ApplicationController
  before_action :user_signed_in?
  layout 'admin'

  def new
    @account = Account.new
    render layout: false
  end

  def create
    @account = Account.create(resource_params)
    if @account.save
      redirect_to accounts_path
      flash[:notice] = 'Account has been created!'
    else
      render 'new'
    end
  end

  def edit
    id = params[:id]
    @account = Account.find(id)
    render layout: false
  end

  def update
    @account = Account.find(params[:id])
    @account.update(resource_params)
    redirect_to accounts_path
    flash[:notice] = 'Account has been updated!'
    render layout: false
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_path
    flash[:notice] = 'Account has been deleted!'
    render layout: false
  end

  def index
    @account = Account.all
    @location = 'Bali, Indonesia'
  end

  def show
    id = params[:id]
    @account = Account.find(id)
    render layout: false
  end

  private

  def resource_params
    params.require(:account).permit(:name, :email, :phone_number, :user_role, :status)
  end
end
