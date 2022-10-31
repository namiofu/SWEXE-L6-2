class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new(product_id: params[:product_id])
    logger.debug(@cartitem.inspect)
  end
  
  def create
    cart = Cartitem.new(qty: params[:cartitem][:qty], product_id: params[:cartitem][:product_id], cart_id: current_cart.id)
    if cart.save
      redirect_to products_path #"/**"
    else
      render 'new'
    end
  end
  
  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to products_path
  end
end
