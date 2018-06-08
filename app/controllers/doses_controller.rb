class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    raise
    @cocktail = Cocktail.find(params[:cocktails_id])
    @dose = Dose.new(dose_params)
  end

  def destroy
  end

  private

  # Cocktail id I am looking for, other I want to specify

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

# routes ?? to update
# link_to back it did not work
# to dose new (put amount of alcohol, and name of ingredient ??, permit id??)
