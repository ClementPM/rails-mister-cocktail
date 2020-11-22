class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all

      if params[:query]
        @cocktails = Cocktail.where("name ILIKE ?", "%#{params[:query]}%")
      else
        @cocktails = Cocktail.all
    end
  end

  def show
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end 

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to root_path
  end

    private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
