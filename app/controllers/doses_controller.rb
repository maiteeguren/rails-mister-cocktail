class DosesController < ApplicationController
    def new
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new
    end
    
    def create
        @dose = Dose.new(dose_params)
        @dose.cocktail = Cocktail.find(params[:cocktail_id])
        @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
        @dose.save!

        redirect_to cocktail_path(@dose.cocktail)
    end

    def destroy
        raise
        @dose = Dose.find(params[:id])
        @dose.destroy

        redirect_to cocktails_path
    end

    private

    def dose_params
        params.require(:dose).permit(:description, :ingedient_id, :cocktail_id)
    end
end
