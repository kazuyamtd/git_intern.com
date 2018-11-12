class FirmsController < ApplicationController
    
    def index
      @firms = Firm.order('id ASC').limit(15).where('name LIKE(?)', "%#{params[:keyword]}%")
    end
    
    def show
      @firm = Firm.find(params[:id])
    end
    
    def search
      @firms = Firm.where('industry LIKE(?)', "%#{params[:keyword]}%")
      @genres = Genre.all
    end
    
end
