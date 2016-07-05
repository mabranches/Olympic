module ControllerJsonHelper
  private
    def controller_json_helper(resource, query_result)
      links = paginator.pagination_links(query_count(query_result))
      query_result = paginator.paginate(query_result)

      serialized_data = query_result.collect do |result_item|
        serializer(resource).serialize(result_item)
      end
      {
        data: serialized_data,
        links: links
      }
    end

    def paginator
      @paginator ||= Paginator.new(params, base_url: base_url, path: path)
    end

    def serializer(resource)
      @serializer ||= Serializer.new(resource, base_url: base_url)
    end

    def base_url
      @base_url ||= request.env['REQUEST_URI'].split(path)[0]
    end

    def path
      @path ||= request.env['PATH_INFO']
    end

    def query_count(query_result)
      return query_result.length if query_result.kind_of? Array
      count = query_result.count
      count.try(:length) || count
    end
end
