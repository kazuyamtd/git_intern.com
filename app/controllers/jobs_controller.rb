class JobsController < ApplicationController
    
    def index
        @firm = Firm.find(params[:firm_id])
    end
    
    def show
    end
    
end
