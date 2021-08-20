class ReviewsController < ApplicationController
  def new
    @coffeee = Coffeee.find(params[:coffeee_id])
    @review = Review.new
  end

  def create
    @coffeee = Coffeee.find(params[:coffeee_id])
    @review = @coffeee.reviews.build(review_params)
    if @review.save
      flash[:green] = 'Review Was Created!'
      redirect_to coffeee_path(@coffeee)
    else
      flash[:red] = 'Review Could Not Be Created.'
      redirect_to coffeee_path(@coffeee)
    end
  end

  def show
    @coffeee = Coffeee.find(params[:coffeee_id])
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
    @coffeee = @review.coffeee
  end

  def update
    @review = Review.find(params[:id])
    @coffeee = @review.coffeee
    @review.update(review_params)
    redirect_to coffeee_path(@coffeee)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to coffeee_path(@review.coffeee)
  end

  private

  def review_params
    params.require(:review).permit(:coffeee_id, :rating, :style, :recipe, :adatives, :favorite, :details)
  end
end
