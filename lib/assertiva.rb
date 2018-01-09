require "assertiva/version"
require "assertiva/localize"
require "assertiva/requests"
require "rest-client"
require "json"

module Assertiva
  # RestClient.log = 'stdout'

  class << self
    attr_accessor :api_key
  end

  class NoApiKey < StandardError
  end

  class InvalidParams < StandardError
  end

  def self.base_url
    @base_url = "https://services.assertivasolucoes.com.br:443"
  end
end
