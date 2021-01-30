class Api::V1::DefendantsController < ApplicationController

   def index
      defendants = Defendant.all
      render json: defendants, include: :counts, status: 200
   end

   def show
      defendant = Defendant.find_by(id: params[:id])
      render json: defendant, status: 200
   end
   
   def create
      defendant = Defendant.create(defendant_params)
      params["counts"].each do |count|
         c = Count.create(name: count["name"], sentence_len: count["length"], defendant_id: defendant.id)
         defendant.counts << c
      end
      render json: defendant, include: :counts, status: 200
   end

   # def update
   #    defendant = Defendant.find_by(id: params[:id])
   #    defendant.update(defendant_params)
   #    render json: defendant, status: 200
   # end

   # def destroy
   #    defendant = Defendant.find_by(id: params[:id])
   #    defendant.destroy
   # end

   private

   def defendant_params
      params.require(:defendant).permit(:name, :discount, :session_id, :sentence_len, :sentence_len_raw)
   end

end
