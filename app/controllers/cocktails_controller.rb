class CocktailsController < ApplicationController
  before_action :find_id, only: [:show]

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
    landing_page
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def landing_page
    @disable_nav = true
  end

  def find_id
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredients, :doses, photos: [])
  end
end
