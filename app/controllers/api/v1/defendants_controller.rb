class Api::V1::DefendantsController < ApplicationController

   def index
      d = Defendant.all
      render_data(d)
   end

   def show
      d = Defendant.find_by(id: params[:id])
      render_data(d)
   end
   
   def create
      d = Defendant.create(defendant_params)
      render_data(d)
   end

   private

   def defendant_params
      params.require(:defendant).permit(:name, :discount, :session_id, :sentence_len, :sentence_len_raw)
   end

end
