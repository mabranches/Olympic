module V1
  class CompetitionResource < JSONAPI::Resource
    attributes :name, :type, :status
    has_many :scores
    has_many :athletes, through: :scores

    filters :name
   end
end
