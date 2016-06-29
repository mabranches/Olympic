module V1
  class AthleteResource < JSONAPI::Resource
    attributes :name
    has_many :scores
    has_many :competitions, through: :scores
  end
end
