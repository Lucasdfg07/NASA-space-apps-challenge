module HomeHelper
    def cases_array
        countries = Country.find_by_sql("SELECT geoid, countriesandterritories, SUM(cases) cases, SUM(deaths) deaths FROM countries GROUP BY geoid, countriesandterritories")

        hash = [['Country', 'Confirmed cases', 'Total Deaths']]
        countries.each do |t|
            hash << [validate_name(t.countriesandterritories), t.cases, t.deaths]
        end

        return hash
    end

    def validate_name(country_name)
        validate_country = country_name
                            .gsub("United States of America", "United States")
                            .gsub("Cote dIvoire", "RCI")
                            .gsub("Democratic Republic of the Congo", "CD")
                            .gsub("Congo", "CG")
                            .gsub("United Republic of Tanzania", "Tanzania")
                            .gsub("South Sudan", "SS")
                            .gsub("Czechia", "CZ")
                            .gsub("North Macedonia", "MK")
                            .gsub("Kosovo", "KS")

        return validate_country
    end

    def monthly_graph(country)
        (3.months.ago.to_date..Date.today).map do |date| {
	      created_at: date,
          deaths: Country.where("date(TO_DATE(countries.daterep, 'DD/MM/YYYY')) = ? AND countries.countriesandterritories = ?", date, country).sum(:deaths),
          cases: Country.where("date(TO_DATE(countries.daterep, 'DD/MM/YYYY')) = ? AND countries.countriesandterritories = ?", date, country).sum(:cases)
	    }
	    end
    end

    def monthly_graph_general
        (4.months.ago.to_date..Date.today).map do |date| {
	      created_at: date,
          deaths: Country.where("date(TO_DATE(countries.daterep, 'DD/MM/YYYY')) = ?", date).sum(:deaths),
          cases: Country.where("date(TO_DATE(countries.daterep, 'DD/MM/YYYY')) = ?", date).sum(:cases)
	    }
	    end
    end
end
