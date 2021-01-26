class Defendant < ApplicationRecord
   belongs_to :session_hash
   has_many :counts
end
