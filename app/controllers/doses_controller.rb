class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create, :destroy]
  before_action :find_ingredient, only: [:new, :create, :destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(strong_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to ????
    else
      render :new
    end
  end

  def destroy

  end

  private

  def strong_params
    params.require(:dose).permit(:description)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:ingredient_id])
  end
end
