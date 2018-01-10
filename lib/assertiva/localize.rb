module Assertiva
  class Localize
    def self.paths
      paths = {
        by_cpf: "/v1/localize/1000/consultar",
        by_cnpj: "/v1/localize/1001/consultar",
        by_phone: "/v1/localize/1002/consultar",
        by_email: "/v1/localize/1003/consultar",
        by_name_or_address: "/v1/localize/1004/consultar",
        related_by_cpf: "/v1/localize/1005/consultar"
      }
    end

    def self.query_by_cpf(cpf)
      begin
        Requests.post(self.paths[:by_cpf] + "?cpf=#{cpf}")
      rescue => e
        raise
      end
    end

    def self.query_by_name_or_address(query_params)
      begin
        Requests.post(self.paths[:by_name_or_address], query_params)
      rescue => e
        raise
      end
    end
  end
end