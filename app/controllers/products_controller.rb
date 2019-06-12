class ProductsController < ApplicationController

  def index
    #byebug (for interactinng/checking out with your db)
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
