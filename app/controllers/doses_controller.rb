class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    # OR
    # @dose.cocktail_id = params[:cocktail_id]

    if @dose.save
      redirect_to cocktail_path(id: @cocktail.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(id: @cocktail.id)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
