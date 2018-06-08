class DosesController < ApplicationController

  def new
    # params with id of cocktail goes from url params
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # after clicking submit button in form
    # params with id cocktail goes from form
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)

    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render "doses/new"
    end
# prefix new_cocktail_dose GET /cocktails/:cocktail_id/doses/new(.:format) doses#new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail

    @dose.destroy

    redirect_to cocktail_path(@cocktail.id)
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
