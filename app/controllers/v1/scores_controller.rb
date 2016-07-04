module V1
  class ScoresController < ApplicationController
    include JSONAPI::ActsAsResourceController

    def index
      scores = Score.eager_load(:athlete, :competition).where(competition_id: params[:competition_id],
                 athlete_id: params[:athlete_id])
      render json: controller_json_helper(ScoreResource, scores), content_type: 'application/vnd.api+json'
    end

    def create
      if params.dig(:data,:attributes)
        params[:data][:attributes]['athlete-id'] = params[:athlete_id]
        params[:data][:attributes]['competition-id'] = params[:competition_id]
      end
      super
    end

    def update
      if params.dig(:data,:attributes)
        params[:data][:attributes]['athlete-id'] = params[:athlete_id]
        params[:data][:attributes]['competition-id'] = params[:competition_id]
      end
      super
    end
  end
end
