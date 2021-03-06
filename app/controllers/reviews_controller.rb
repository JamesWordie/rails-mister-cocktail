class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @review = Review.new(strong_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @cocktail = Cocktail.find(params[:id])
    @review.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def strong_params
    params.require(:review).permit(:content, :rating)
  end
end
