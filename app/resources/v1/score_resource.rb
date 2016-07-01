module V1
  class ScoreResource < JSONAPI::Resource
    attributes :value, :unity, :athlete_name, :competition_name
    has_one :athlete
    has_one :competition

    def athlete_name
      @model.athlete.name
    end

    def competition_name
      @model.competition.name
    end

    def unity
      @model.competition.unity
    end
  end
end
