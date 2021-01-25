class DefendantSerializer
   include FastJsonapi::ObjectSerializer
   attributes :name, :counts, :sentence
   belongs_to :session
   has_many :counts
end
