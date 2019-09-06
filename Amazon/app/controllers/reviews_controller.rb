class ReviewsController < ApplicationController
  def new
  end

  def create
    @product = Product.find params[:product_id]
    review_params = params.require(:review).permit(:body, :rating)
    @review = Review.new review_params
    @review.product = @product

    if @review.save
      redirect_to @product
    else
      @reviews = @product.reviews.order(created_at: :desc)
      render 'products/show'
    end
  end
end
