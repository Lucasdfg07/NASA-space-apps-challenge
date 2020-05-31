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
            countriesAndTerritories = data["countriesAndTerritories"]
            geoId = data["geoId"]

            @country =  Country.find_or_create_by(
                            dateRep: dateRep, 
                            day: day, 
                            month: month, 
                            year: year, 
                            cases: cases, 
                            deaths: death, 
                            countriesAndTerritories: countriesAndTerritories,
                            geoId: geoId)

            # render json: data
        end
    end
end