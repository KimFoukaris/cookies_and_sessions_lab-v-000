class ProductsController < ApplicationController

  def index
    @cart = session[:cart]
  end

  def add
    session[:cart] << product_params[:product]
    redirect_to product_path
  end

  private
  def product_params
    params.require(:product).permit(:product)
  end
end
