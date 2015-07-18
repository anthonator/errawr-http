require 'errawr'

require 'errawr/http/version'

module Errawr
  module HTTP
    I18n.load_path << "#{File.dirname(__FILE__)}/http/locale/en.yml"
    I18n.reload!
  end
end
