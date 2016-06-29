module V1
  class ScoreResource < JSONAPI::Resource
    attributes :value, :athlete_name, :competition_name
    belongs_to :athlete
    belongs_to :competition

    def athlete_name
      athlete.name
    end

    def competition_name
      competition.name
    end
#    class << self
#      def apply_includes(records, directives)
#        byebug
#        #directives[:include_directives] = JSONAPI::IncludeDirectives.new(['athletes'])
##        super.includes(:athletes, :competitions)
#        records = records.eager_load(:athlete)
#        super(records, directives).includes(:athlete)
#      end
#    end
  end
end
