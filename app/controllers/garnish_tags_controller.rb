class GarnishTagsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @garnish_tag = GarnishTag.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    params['garnish_tag']['garnish'].each do |id|
      garnish = Garnish.find(id)
      garnish_tag = GarnishTag.new(cocktail: @cocktail, garnish: garnish)
      garnish_tag.save
    end
    redirect_to root_path
  end

  def destroy

  end
end
