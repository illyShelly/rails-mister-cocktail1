class CocktailsController < ApplicationController

# list of cocktails
# details of a given cocktail
# create a new cocktail

  def index
    @cocktails = Cocktail.all
  end

  def show
    # raise
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
        redirect_to cocktail_path(@cocktail)
       else
         render :new
       end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url, notice: 'Cocktail was deleted.'}
    end
  end

  private
  
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end