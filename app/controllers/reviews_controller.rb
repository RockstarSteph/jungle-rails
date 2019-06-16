class ReviewsController < ApplicationController


    def create

      if session[:user_id]
      @review = Review.new(review_params)
      @review.user = current_user
      @review.product_id = params[:product_id]
        puts @review
        if @review.save!
          redirect_to '/products'
        else
          redirect_to '/products'
        end
      else
        redirect_to '/login'
      end
    end


  def review_params
    params.require(:review).permit(:description, :rating)
  end


  def destroy
    @review = Review.find params[:id]

    if session[:user_id] == @review.user_id
      @review.destroy
    end
    redirect_to '/products'
  end

end

