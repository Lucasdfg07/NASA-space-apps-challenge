module HomeHelper
    def cases_array
        countries_names = Country.group(:id).group(:geoId).pluck(:geoId)
        
        hash = [['Country', 'Confirmed cases', 'Total Deaths']]
        
        countries_names.each do |country|
            data_country = Country.where(geoId: country)
            hash << [
                     country, 
                     data_country.map{|data| data.cases.to_i}.sum, 
                     data_country.map{|data| data.deaths.to_i}.sum
                    ]
        end

        return hash
    end
end
