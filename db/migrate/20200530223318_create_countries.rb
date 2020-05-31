class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :daterep
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :cases
      t.integer :deaths
      t.string :countriesandterritories
      t.string :geoid
      t.timestamps
    end
  end
end
