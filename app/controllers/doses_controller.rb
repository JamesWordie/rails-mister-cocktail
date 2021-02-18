class DosesController < ApplicationController
  # before_action :find_cocktail, only: [:new, :create, :destroy]

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(strong_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = @dose.cocktail
    redirect_to cocktail_path(@cocktail)
  end

  private

  def strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

#  def find_cocktail
#    @cocktail = Cocktail.find(params[:cocktail_id])
#  end


end
