require 'spec_helper'

describe Errawr::HTTP do
  ERRORS_4XX = [
    [400, :bad_request],
    [401, :unauthorized],
    [402, :payment_required],
    [403, :forbidden],
    [404, :not_found],
    [405, :method_not_allowed],
    [406, :not_acceptable],
    [407, :proxy_authentication_required],
    [408, :request_timeout],
    [409, :conflict],
    [410, :gone],
    [411, :length_required],
    [412, :precondition_failed],
    [413, :request_entity_too_large],
    [414, :request_uri_too_long],
    [415, :unsupported_media_type],
    [416, :requested_range_not_satisfiable],
    [417, :expectation_failed],
    [422, :unprocessable_entity],
    [423, :locked],
    [424, :failed_dependency],
    [426, :upgrade_required],
    [428, :precondition_required],
    [429, :too_many_requests],
    [431, :request_header_fields_too_large]
  ]

  ERRORS_5XX = [
    [500, :internal_server_error],
    [501, :not_implemented],
    [502, :bad_gateway],
    [503, :service_unavailable],
    [504, :gateway_timeout],
    [505, :http_version_not_supported],
    [506, :variant_also_negotiates],
    [507, :insufficient_storage],
    [508, :loop_detected],
    [510, :not_extended],
    [511, :network_authentication_required]
  ]

  ERRORS_4XX.each do |error|
    it "should define 4XX error #{error[0]}" do
      begin
        Errawr.error!(error[1])
      rescue => e
        expect(e.context[:http_status]).to eq(error[0])
      end
    end
  end

  ERRORS_5XX.each do |error|
    it "should define 5XX error #{error[0]}" do
      begin
        Errawr.error!(error[1])
      rescue => e
        expect(e.context[:http_status]).to eq(error[0])
      end
    end
  end
end
