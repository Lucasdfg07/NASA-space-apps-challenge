class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :dateRep
      t.string :day
      t.string :month
      t.string :year
      t.string :cases
      t.string :deaths
      t.string :countriesAndTerritories
      t.timestamps
    end
  end
end
