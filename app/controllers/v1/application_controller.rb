module V1
  class ApplicationController < ActionController::API

  private
    def base_url
      @base_url ||= request.env['REQUEST_URI'].split(request.env['PATH_INFO'])[0]
    end
  end
end
