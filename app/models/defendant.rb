class Defendant < ApplicationRecord
   belongs_to :session
   has_many :counts
end
