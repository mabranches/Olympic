module V1
  class AthleteResource < JSONAPI::Resource
    attributes :name, :sex, :age
    has_many :scores
    has_many :competitions, through: :scores
    filters :name, :sex, :age
  end
end
