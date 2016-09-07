class MerchantsController < ApplicationController
  before_action :set_merchant, only: [:show, :update, :edit, :destroy]

  def index
    @merchants = Merchant.all
  end

  def new
    @merchant = Merchant.new
  end

  def create
    @merchant = Merchant.new(merchant_params)
    if @merchant.save
      redirect_to merchant_path(@merchant)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @merchant.update(merchant_params)
      redirect_to merchant_path(@merchant)
    else
      render :edit
    end
  end

  def destroy
    @merchant.destroy
    redirect_to merchants_path
  end

  private

  def merchant_params
    params.require(:merchant).permit(:name, :items_type)
  end

  def set_merchant
    @merchant = Merchant.find(params[:id])
  end
end
