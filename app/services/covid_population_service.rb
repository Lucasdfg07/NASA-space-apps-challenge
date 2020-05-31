require 'rest-client'
require 'json'

class CovidPopulationService
    def call
        begin
            base_url = "https://opendata.ecdc.europa.eu/covid19/casedistribution/json/"
            response = RestClient.get base_url
            value = JSON.parse(response.body)
            
            # Populate BD
            PopulateBdService.new(value["records"]).call

        rescue RestClient::ExceptionWithResponse => e
        e.response
        end
    end
end