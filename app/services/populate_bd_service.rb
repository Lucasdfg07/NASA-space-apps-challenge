class PopulateBdService
    def initialize(data)
        @data = data
    end

    def call
        @data.each do |data|
            dateRep = data["dateRep"]
            day = data["day"]
            month = data["month"]
            year = data["year"]
            cases = data["cases"]
            death = data["deaths"]
            countriesAndTerritories = data["countriesAndTerritories"].gsub("_", " ")
            geoId = data["geoId"]

            @country =  Country.find_or_create_by(
                            daterep: dateRep, 
                            day: day.to_i, 
                            month: month.to_i, 
                            year: year.to_i, 
                            cases: cases.to_i, 
                            deaths: death.to_i, 
                            countriesandterritories: countriesAndTerritories,
                            geoid: geoId)

            # render json: data
        end
    end
end