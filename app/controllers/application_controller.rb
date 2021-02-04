class ApplicationController < ActionController::API

   private

   def render_data(obj)
      render json: Serializer.new(obj).to_serialized_json
   end
   
end
