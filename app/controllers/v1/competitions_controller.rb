module V1
  class CompetitionsController < ApplicationController

    def types
      type_serializer = Serializer.new(CompetitionTypeResource, base_url: base_url)
      types = CompetitionType.all
      serialized_types = types.collect do |type|
        type_serializer.serialize(type)
      end
      render json: {data: serialized_types}
    end

    def rank
      competition = Competition.find(params[:competition_id])
      scores = competition.rank

      render json: controller_json_helper(ScoreResource, scores)
    end
  end
end
