module V1
  class ScoresController < ApplicationController
    include JSONAPI::ActsAsResourceController
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
