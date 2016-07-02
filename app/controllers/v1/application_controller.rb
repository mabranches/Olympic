module V1
  class ApplicationController < ActionController::API
    include ControllerJsonHelper
    include JSONAPI::ActsAsResourceController
  end
end
