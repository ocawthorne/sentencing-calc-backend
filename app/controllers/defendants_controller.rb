class DefendantsController < ApplicationController

   def new
      
   end

   def index
      render plain: "Hello"
   end

   def show
      defendant = Defendant.find_by(id: params[:id])
      render json: defendant
   end

end
