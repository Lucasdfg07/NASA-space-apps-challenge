class Country < ApplicationRecord

    def covid_data
        CovidPopulationService.new.call
    end
end
