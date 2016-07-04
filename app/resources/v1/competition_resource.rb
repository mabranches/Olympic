module V1
  class CompetitionResource < JSONAPI::Resource
    attributes :name, :type, :status, :max_scores, :unity
    has_many :scores
    has_many :athletes, through: :scores

    filters :name, :type, :status

  end
end
