module Assertiva
  module Requests
    def self.post(path, params={})
      raise NoApiKey unless Assertiva.api_key
      headers = {
        authorization: Assertiva.api_key,
        accept: "application/json;charset=UTF-8",
        content_type: "application/json;charset=UTF-8"
      }

      url = Assertiva.base_url +  path
      
      begin
        response = RestClient.post(url, params.to_json, headers)
      rescue => e
        raise
      end
    end
  end
end