class DosesController < ApplicationController
  def new
    # raise
    # must find the cocktail which the new dose will belong to
    @cocktail = Cocktail.find(params[:cocktail_id])
    # initialize a new dose
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params) # create new dose with params passed into form
    @cocktail = Cocktail.find(params[:cocktail_id]) # find the cocktail the new dose belongs to
    @dose.cocktail = @cocktail # set the dose cocktail id the the cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail) # go to show page of cocktail
    else
      render :new # if the form was not filled correctly, reload the form
    end
  end

  def destroy
    # raise
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
