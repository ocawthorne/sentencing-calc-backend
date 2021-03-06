class Api::V1::CountsController < ApplicationController

   def index
      c = Count.all
      render_data(c)
   end

   def create
      sleep(0.25) # Give database time to update (Defendant should come first)
      c = Count.create(name: params["name"], sentence_len: params["length"], defendant_id: Defendant.last.id)
      render_data(c)
   end

   def show
      c = Count.find_by(id: params[:id])
      render_data(c)
   end

end
