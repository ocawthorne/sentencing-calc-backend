class Serializer

   def initialize(object)
      @obj = object
    end
  
    def to_serialized_json
      @obj.to_json({
        except: [:created_at, :updated_at]
      })
    end

end
