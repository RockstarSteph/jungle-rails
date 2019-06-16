class ProductsController < ApplicationController


  def index
    #byebug (for interactinng/checking out with your db)
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Review.where(product_id: params[:id]).average("rating")
    @all_reviews = Review.where(product_id: params[:id]).order(created_at: :desc)
    @new_review = Review.new
  end




end
