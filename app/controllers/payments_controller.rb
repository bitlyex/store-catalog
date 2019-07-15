class PaymentsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @payment = Payment.all
    @location = 'California, USA'
  end

  def show
  end
end
