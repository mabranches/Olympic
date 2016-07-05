class Paginator
  def initialize(params, options={})
    @base_url = options.fetch(:base_url,'')
    @path = options.fetch(:path,'')
    @paginator = PagedPaginator.new(params[:page])
    @other_params = params.slice(*(params.keys - ['page', 'controller', 'action']))
  end

  def pagination_links(count)
    out_links = {}
    links = @paginator.links_page_params(record_count: count)
    links.each_pair do |link, params|
      str_link = "#{@base_url}#{@path}?#{@other_params.to_query}"
      str_link << '&' unless @other_params.empty?
      str_link << params.to_query('page')
      out_links[link] = str_link
    end
    out_links
  end

  def paginate(records)
    return records if records.kind_of? Array
    @paginator.apply(records, nil)
  end
end
