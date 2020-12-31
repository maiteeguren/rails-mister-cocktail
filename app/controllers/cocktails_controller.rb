class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :update]
    def index
        @cocktails = Cocktail.all
        @cocktail = Cocktail.new
    end
    
    def create
        @cocktail = Cocktail.new(cocktail_params)
        @cocktail.user = current_user

        if @cocktail.save
            redirect_to cocktail_path(@cocktail)
        else
            redirect_to root_path
        end
    end

    def show
        @dose = Dose.new
        @review = Review.new
    end

    def search
        if params[:params][:query].present?
            @cocktails = Cocktail.where("name ILIKE ?", "%#{params[:params][:query]}%")
        else
            @cocktails = Cocktail.all
        end
    end
    
    def update
        @cocktail.update(cocktail_params)

        redirect_to cocktail_path(@cocktail)
    end

    private

    def set_cocktail
        @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(:name, :doses, :photo, :instructions)
    end
end
