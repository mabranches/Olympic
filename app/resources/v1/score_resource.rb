module V1
  class ScoreResource < JSONAPI::Resource
    attributes :result, :athlete_name, :competition_name
    has_one :athlete
    has_one :competition

    def athlete_name
      @model.athlete.name
    end

    def competition_name
      @model.competition.name
    end
    def result
      @model.value.to_s + @model.competition.unity
    end
  end
end
