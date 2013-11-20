# Errawr::HTTP

Raise 4xx and 5xx HTTP status code errors using Errawr.

[![Build Status](https://travis-ci.org/anthonator/errawr-http.png?branch=master)](https://travis-ci.org/anthonator/errawr-http) [![Dependency Status](https://gemnasium.com/anthonator/errawr-http.png)](https://gemnasium.com/anthonator/errawr-http) [![Coverage Status](https://coveralls.io/repos/anthonator/errawr-http/badge.png)](https://coveralls.io/r/anthonator/errawr-http) [![Code Climate](https://codeclimate.com/github/anthonator/errawr-http.png)](https://codeclimate.com/github/anthonator/errawr-http)

## Installation

Add this line to your application's Gemfile:

    gem 'errawr-http'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install errawr-http

## Usage

### Raise HTTP Error

```ruby
begin
  Errawr.error!(:bad_request)
rescue => e
  puts e.message # => Will return "Bad Request"
  puts e.context[:http_status] # => Will return 400
end
```

### Supported 4xx Status Codes

| Message                          | HTTP Status Code | Symbol                           |
| -------------------------------- | ---------------- | -------------------------------- |
| Bad Request                      | 400              | :bad_request                     |
| Unauthorized                     | 401              | :unauthorized                    |
| Payment Required                 | 402              | :payment_required                |
| Forbidden                        | 403              | :forbidden                       |
| Not Found                        | 404              | :not_found                       |
| Method Not Allowed               | 405              | :method_not_allowed              |
| Not Acceptable                   | 406              | :not_acceptable                  |
| Proxy Authentication Required    | 407              | :proxy_authentication_required   |
| Request Timeout                  | 408              | :request_timeout                 |
| Conflict                         | 409              | :conflict                        |
| Gone                             | 410              | :gone                            |
| Length Required                  | 411              | :length_required                 |
| Precondition Failed              | 412              | :precondition_failed             |
| Request Entity Too Large         | 413              | :request_entity_too_large        |
| Request-URI Too Long             | 414              | :request_uri_too_long            |
| Unsupported Media Type           | 415              | :unsupported_media_type          |
| Request Range Not Satisfiable    | 416              | :requested_range_not_satisfiable |
| Expectation Failed               | 417              | :expectation_failed              |
| Unprocessable Entity             | 422              | :unprocessable_entity            |
| Locked                           | 423              | :locked                          |
| Failed Dependency                | 424              | :failed_dependency               |
| Upgrade Required                 | 426              | :upgrade_required                |
| Precondition Required            | 428              | :precondition_required           |
| Too Many Requests                | 429              | :too_many_requests               |
| Request Header Fields Too Large  | 431              | :request_header_fields_too_large |

### Supported 5xx Status Codes

| Message                          | HTTP Status Code | Symbol                           |
| Internal Server Error            | 500              | :internal_server_error           |
| Not Implemented                  | 501              | :not_implemented                 |
| Bad Gateway                      | 502              | :bad_gateway                     |
| Service Unavailable              | 503              | :service_unavailable             |
| Gateway Timeout                  | 504              | :gateway_timeout                 |
| HTTP Version Not Supported       | 505              | :http_version_not_supported      |
| Variant Also Negotiates          | 506              | :variant_also_negotiates         |
| Insufficient Storage             | 507              | :insufficient_storage            |
| Loop Detected                    | 508              | :loop_detected                   |
| Not Extended                     | 510              | :not_extended                    |
| Network Authentication Required  | 511              | :network_authentication_required |

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
