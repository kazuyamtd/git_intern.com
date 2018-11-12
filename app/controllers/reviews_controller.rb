class ReviewsController < ApplicationController
    
    def new
        @firm = Firm.find(params[:firm_id])
        @review = Review.new
    end
    
    def create
        Review.create(create_params)
        redirect_to controller: :firms, action: :index
    end
    
    private
    def create_params
        params.require(:review).permit(:rate, :test, :review).merge(firm_id: params[:firm_id])
    end
end