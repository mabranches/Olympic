module V1
  class ScoreResource < JSONAPI::Resource
    attributes :result, :athlete_name, :competition_name
    has_one :athlete
    has_one :competition

    def athlete_name
      athlete.name
    end

    def competition_name
      competition.name
    end
    def result
      value.to_s + competition.unity
    end
  end
end
