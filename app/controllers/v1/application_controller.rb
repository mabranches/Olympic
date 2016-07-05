module V1
  class ApplicationController < ActionController::API
    rescue_from Exception, with: :log_exception
    include ControllerJsonHelper
    include JSONAPI::ActsAsResourceController
    def log_exception(e)
      logger.error "#{e.message} - #{e.backtrace.inspect}"
      render json: { errors:[{title: e.class.name.underscore, detail: e.message},
        status: :internal_server_error] }, content_type: 'application/vnd.api+json',
        status: :internal_server_error
    end
  end
end
