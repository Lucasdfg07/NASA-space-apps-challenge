class CreateTradingEconomics < ActiveRecord::Migration[6.0]
  def change
    create_table :trading_economics do |t|
      t.string :country
      t.string :economic_category
      t.float :last
      t.float :previous
      t.float :highest
      t.float :lowest
      t.string :unit
      t.string :reference
      t.timestamps
    end
  end
end
