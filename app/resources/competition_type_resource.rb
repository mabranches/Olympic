class CompetitionTypeResource < JSONAPI::Resource
  attributes :name
  paginator :none
  def custom_links(options)
     byebug
    {self: options[:serializer].link_builder.base_url + "/competitions/types"}
  end
end
