module ControllerJsonHelper
  private
    def controller_json_helper(resource, query_result)
      paginator = Paginator.new(params, base_url: base_url, path: path)
      links = paginator.pagination_links(query_result.length)
      query_result = paginator.paginate(query_result)

      serializer = Serializer.new(resource, base_url: base_url)
      serialized_data = query_result.collect do |result_item|
        serializer.serialize(result_item)
      end
      {
        data: serialized_data,
        links: links
      }
    end
    def base_url
      @base_url ||= request.env['REQUEST_URI'].split(path)[0]
    end

    def path
      @path ||= request.env['PATH_INFO']
    end
end
