require 'benchmark'

module HomeHelper
    def cases_array
        @countries = Country.find_by_sql("SELECT geoid, SUM(cases) cases, SUM(deaths) deaths FROM countries GROUP BY geoid")

        @hash = [['Country', 'Confirmed cases', 'Total Deaths']]
        @countries.each do |t|
            @hash << [t.geoid, t.cases, t.deaths]
        end

        return @hash
    end
end
