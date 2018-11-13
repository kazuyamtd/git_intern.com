class GenresController < ApplicationController
    
    def index
        @genres = Genre.all
    end
    
    def show
        @genre = Genre.find(params[:id])
        @firms = Firm.all
    end
    
end
