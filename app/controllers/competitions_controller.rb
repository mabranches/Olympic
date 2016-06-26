class CompetitionsController < ApplicationController
  def types
    base_url = request.env['REQUEST_URI'].split(request.env['PATH_INFO'])[0]
    types = CompetitionType.all
    type_serializer =  JSONAPI::ResourceSerializer.
      new(CompetitionTypeResource, base_url: base_url)
    serialized_types = types.collect do |type|
      type_serializer.serialize_to_hash(CompetitionTypeResource.new(type, nil))
    end
    render json: serialized_types
  end
end
