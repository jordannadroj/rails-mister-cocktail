class CocktailsController < ApplicationController
  def index
    # raise
    @cocktails = Cocktail.all
  end

  def show
    # raise
    @cocktail = Cocktail.find(params[:id])
  end

  def search
    # raise
    if params[:search].blank?
      redirect_to root_path
    else
      @search = params[:search].downcase
      @results = Cocktail.all.where('lower(name) LIKE :search', search: "%#{@search}%")
    end
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

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end


end
