class CouponsController < ApplicationController

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to @coupon
  end

  def index
  end

  def new
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
