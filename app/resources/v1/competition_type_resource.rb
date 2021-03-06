module V1
  class CompetitionTypeResource < JSONAPI::Resource
    attributes :name
    paginator :none
    def custom_links(options)
      {self: options[:serializer].link_builder.base_url + "/v1/competitions/types"}
    end
  end
end
