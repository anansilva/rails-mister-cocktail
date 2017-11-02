class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.All
  end

  def show
  end
end
