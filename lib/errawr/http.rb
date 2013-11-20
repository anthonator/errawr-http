require 'errawr'

require 'errawr/http/version'

module Errawr
  module HTTP
    I18n.load_path << "#{File.dirname(__FILE__)}/http/locale/en.yml"
    I18n.reload!
    
    ERRORS_4XX = [
      :bad_request,
      :unauthorized,
      :payment_required,
      :forbidden,
      :not_found,
      :method_not_allowed,
      :not_acceptable,
      :proxy_authentication_required,
      :request_timeout,
      :conflict,
      :gone,
      :length_required,
      :precondition_failed,
      :request_entity_too_large,
      :request_uri_too_long,
      :unsupported_media_type,
      :requested_range_not_satisfiable,
      :expectation_failed,
      :unprocessable_entity,
      :locked,
      :failed_dependency,
      :upgrade_required,
      :precondition_required,
      :too_many_requests,
      :request_header_fields_too_large
    ]

    ERRORS_5XX = [
      :internal_server_error,
      :not_implemented,
      :bad_gateway,
      :service_unavailable,
      :gateway_timeout,
      :http_version_not_supported,
      :variant_also_negotiates,
      :insufficient_storage,
      :loop_detected,
      :not_extended,
      :network_authentication_required
    ]

    ERRORS_4XX.each do |e|
      Errawr.register!(e)
    end
    
    ERRORS_5XX.each do |e|
      Errawr.register!(e)
    end
  end
end
