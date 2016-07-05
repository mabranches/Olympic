module V1
  class CompetitionsController < ApplicationController
    def types
      types = CompetitionType.all
      render json: controller_json_helper(CompetitionTypeResource, types),
        content_type: 'application/vnd.api+json'
    end

    def rank
      competition = Competition.find(params[:competition_id])
      scores = competition.rank

      render json: controller_json_helper(ScoreResource, scores),
        content_type: 'application/vnd.api+json'
    end
  end
end
