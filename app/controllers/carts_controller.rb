class CartsController < ApplicationController
  def show
    @cartshows = Cartitem.where(cart_id: current_cart)
    @total = 0
    logger.debug(@cartshows.inspect)
  end
end

#where(cart_id: current_cart)