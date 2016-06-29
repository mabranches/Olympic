module V1
  class CompetitionsController < ApplicationController

    def index
    end

    def show
    end

    def create
    end

    def update
    end

    def destroy
    end

    def types
      byebug
      base_url = request.env['REQUEST_URI'].split(request.env['PATH_INFO'])[0]
      type_serializer = Serializer.new(CompetitionTypeResource, base_url: base_url)
      types = CompetitionType.all
      serialized_types = types.collect do |type|
        type_serializer.serialize(type)
      end
      render json: {data: serialized_types}
    end
  end
end
