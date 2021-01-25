class DefendantsController < ApplicationController

   def new
      
   end

   def index

   end

   def show
      defendant = Defendant.find_by(id: params[:id])
      render json: defendant
   end

end
