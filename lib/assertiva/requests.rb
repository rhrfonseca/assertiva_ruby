module Assertiva
  module Requests
    def self.post(path, params={})
      raise NoApiKey unless Assertiva.api_key
      headers = {
        Authorization: Assertiva.api_key,
        Accept: "application/json",
      }

      url = Assertiva.base_url +  path
      
      begin
        response = RestClient.post(url, params.to_json, headers)
      rescue => e
        p e.message
      end
    end
  end
end