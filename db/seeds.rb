def get_data
    all_data = []

    url = "https://tradingeconomics.com/country-list/government-spending-to-gdp"
  
  html = open(url)

  doc = Nokogiri::HTML(html)

  datas = doc.css('.table')

  row_value = []
  geral_countries_array = []
  datas.each do |datatable_value|

      count = 1
      datatable_value.css('tr').each do |table_values|
          if count > 1
              # Catch row of table
              data_array = {
                  country: table_values.children[1].text.strip.delete("\n").delete("\r"),
                  link: table_values.children[1].children[1].attribute('href').value,
                  reference: datatable_value.css('td')[3].text.strip.delete("\n").delete("\r")
              }


              # Enter in row's link
              country_economic_data_url = "https://tradingeconomics.com#{data_array[:link]}"
              html_country = open(country_economic_data_url)
              doc_country = Nokogiri::HTML(html_country)
              country_info = doc_country.css('.table-hover')

              economic_individual_data = []
              country_info.each do |info|
                  count_data = 1
                  this_country_economic_data = []
                  info.css('tr').each do |government_data|
                      if count_data > 1 && count_data < 5
                          country_economic_data = {
                              economic_category: government_data.children[1].text.strip.delete("\n").delete("\r"),
                              last: government_data.css('td')[1].text.strip.delete("\n").delete("\r"),
                              previous: government_data.css('td')[2].text.strip.delete("\n").delete("\r"),
                              highest: government_data.css('td')[3].text.strip.delete("\n").delete("\r"),
                              lowest: government_data.css('td')[4].text.strip.delete("\n").delete("\r"),
                              unit: government_data.css('td')[5].text.strip.delete("\n").delete("\r"),
                          }
                          
                          this_country_economic_data << country_economic_data
                      end
                      count_data += 1
                  end
                  economic_individual_data << this_country_economic_data
              end

              geral_countries_array << data_array
              geral_countries_array << economic_individual_data
          end

          count += 1
      end
      
      row_value << geral_countries_array
  end

  count_information = 0
  row_value[0].each do |final_values|
          country = row_value[0][count_information][:country]
          reference = row_value[0][count_information][:reference]
          
          row_value[0][count_information+1][0].each do |economic_inform|
              economic_category = economic_inform[:economic_category]
              last = economic_inform[:last].to_f
              previous = economic_inform[:previous].to_f
              highest = economic_inform[:highest].to_f
              lowest = economic_inform[:lowest].to_f
              unit = economic_inform[:unit]

              TradingEconomic.find_or_create_by(country: country,
                                                economic_category: economic_category,
                                                last: last,
                                                previous: previous,
                                                highest: highest,
                                                lowest: lowest,
                                                unit: unit,
                                                reference: reference)
          end
      count_information += 2
  end
end

get_data