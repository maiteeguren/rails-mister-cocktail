class ReviewsController < ApplicationController
    def create 
        @cocktail = Cocktail.find(params[:cocktail_id])       
        @review = Review.new(review_params)
        @review.cocktail = @cocktail
        @review.user = current_user
        @review.save
        
        redirect_to cocktail_path(@cocktail)
    end

    def index
        @reviews = Review.where(cocktail: params[:cocktail_id])
        @cocktail = Cocktail.find(params[:cocktail_id])
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating)
    end
end
