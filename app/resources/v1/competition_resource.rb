module V1
  class CompetitionResource < JSONAPI::Resource
    attributes :name, :status
    has_many :scores
    has_many :athletes, through: :scores
   end
end
