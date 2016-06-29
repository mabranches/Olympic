module V1
  class CompetitionResource < JSONAPI::Resource
    attributes :id, :name, :status
    has_many :scores
    has_many :athletes, through: :scores
    def records_for(relationship_name)
      scores = nil
      case relationship_name
      when :scores
        return _model.scores.includes(:athlete, :competition)
      when :athletes
        return _model.athletes
      end
      super
    end
  end
end
