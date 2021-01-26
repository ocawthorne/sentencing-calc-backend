class Api::V1::DefendantsController < ApplicationController

   def index
      defendants = Defendant.all #TODO only include Defendants which match the current session ID.
      render json: defendants, status: 200
   end

   def show
      defendant = Defendant.find_by(id: params[:id])
      render json: defendant, status: 200
   end

   def create
      defendant = Defendant.create(defendant_params)
      render json: defendant, status: 200
   end

   def update
      defendant = Defendant.find_by(id: params[:id])
      defendant.update(defendant_params)
      render json: defendant, status: 200
   end

   def destroy
      defendant = Defendant.find_by(id: params[:id])
      defendant.destroy
   end

   private

   def defendant_params
      params.require(:defendant).permit(:name)
   end

end
